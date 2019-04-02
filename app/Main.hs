module Main where

import           Data.List (sort)
import qualified Data.Map as M
import           System.Environment (getArgs)
import           System.Directory (doesFileExist)
import           System.FilePath (FilePath, (</>))
import           Problems

-- Scans a list of directories for a file
findFileInPaths :: FilePath -> [FilePath] -> IO (Maybe FilePath)
findFileInPaths filename ps = do
    let paths = map (</> filename) ps
    exists <- mapM doesFileExist paths
    let valid = filter fst $ zip exists paths
    if null valid
        then pure Nothing
        else pure $ Just (snd $ head valid)

runFileProblem :: FilePath -> (String -> Result) -> Result -> IO ()
runFileProblem s f solution
    = do
        path <- findFileInPaths s [".", "src", "../src"]
        case path of
            Nothing -> putStrLn $ "ERROR: could not find input file: " ++ s
            Just file -> do
                contents <- readFile file
                putStrLn $ checkSolution (f contents) solution

runProblem :: Problem -> Result -> IO ()
runProblem p solution
    = case p of
        PN f -> putStrLn $ checkSolution f solution
        PF s f -> runFileProblem f s solution

checkSolution :: Result -> Result -> String
checkSolution result solution
    | result == solution = show result
    | otherwise = show result ++ " (MISMATCH! Expected: " ++ show solution ++ ")"

runOne :: Int -> IO ()
runOne n = do
    putStr $ "Problem #" ++ show n ++ ": "
    case M.lookup n problems of
        Nothing -> putStrLn "unimplemented"
        Just p -> case M.lookup n solutions of
                    Nothing -> putStrLn "(missing solution entry)"
                    Just s -> runProblem p s

runAll :: IO ()
runAll = mapM_ runOne (sort $ M.keys problems)

main :: IO ()
main = do
    args <- getArgs
    if null args
        then runAll
        else mapM_ (runOne . read) args
