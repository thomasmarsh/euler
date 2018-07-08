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

runFileProblem :: FilePath -> (String -> Integer) -> IO ()
runFileProblem s f
    = do
        path <- findFileInPaths s [".", "src", "../src"]
        case path of
            Nothing -> print $ "ERROR: could not find input file: " ++ s
            Just file -> do
                contents <- readFile file
                print $ f contents

runProblem :: Problem -> IO ()
runProblem p
    = case p of
        PN f -> print f
        PF s f -> runFileProblem f s

runOne :: Int -> IO ()
runOne n = do
    putStr $ "Problem #" ++ show n ++ ": "
    case M.lookup n problems of
        Nothing -> putStrLn "unimplemented"
        Just p -> runProblem p

runAll :: IO ()
runAll = mapM_ runOne (sort $ M.keys problems)

main :: IO ()
main = do
    args <- getArgs
    if null args
        then runAll
        else mapM_ (runOne . read) args
