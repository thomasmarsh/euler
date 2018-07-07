module Main where

import           Data.List (sort)
import qualified Data.Map as M
import           System.Environment (getArgs)
import           System.Directory (doesFileExist)
import           System.FilePath (FilePath, (</>))

import E001
import E002
import E003
import E004
import E005
import E006
import E007
import E008
import E009
import E010
import E011
--import E012
import E013
import E014
import E015
import E016
import E017
import E020
import E022
import E043

data Problem
    = PN Integer
    | PF (String -> Integer) FilePath

problems :: M.Map Int Problem
problems = M.fromList
    [ (1, PN e1)
    , (2, PN e2)
    , (3, PN e3)
    , (4, PN e4)
    , (5, PN e5)
    , (6, PN e6)
    , (7, PN e7)
    , (8, PN e8)
    , (9, PN e9)
    , (10, PN e10)
    , (11, PN e11)
    -- , (12, PN e12)
    , (13, PN e13)
    , (14, PN e14)
    , (15, PN e15)
    , (16, PN e16)
    , (17, PN e17)
    , (20, PN e20)
    , (22, PF e22 "E022.txt")
    , (43, PN e43)
    ]

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
