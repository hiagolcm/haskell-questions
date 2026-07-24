module TestHarness (check, runSuite) where

import Control.Exception (SomeException, evaluate, try)
import System.Exit (exitFailure, exitSuccess)

-- | Compares an actual value against an expected one, printing a PASS/FAIL
-- line. Any exception raised while forcing either value (e.g. an `undefined`
-- stub you haven't filled in yet) is caught and reported as a failure
-- instead of crashing the whole test run.
check :: (Eq a, Show a) => String -> a -> a -> IO Bool
check label actual expected = do
  result <- try (evaluate (actual == expected)) :: IO (Either SomeException Bool)
  case result of
    Left err -> do
      putStrLn ("  [FAIL] " ++ label ++ " -- crashed: " ++ show err)
      return False
    Right True -> do
      putStrLn ("  [PASS] " ++ label)
      return True
    Right False -> do
      shownActual <- try (evaluate (show actual)) :: IO (Either SomeException String)
      let shown = either (const "<exception while showing value>") id shownActual
      putStrLn ("  [FAIL] " ++ label ++ " -- expected " ++ show expected ++ ", got " ++ shown)
      return False

-- | Runs a named list of checks, prints a summary, and exits with a
-- non-zero status if any check failed (so scripts/CI can detect failure).
runSuite :: String -> [IO Bool] -> IO ()
runSuite name checks = do
  putStrLn ("== " ++ name ++ " ==")
  results <- sequence checks
  let passed = length (filter id results)
      total = length results
  putStrLn (show passed ++ "/" ++ show total ++ " passed")
  if passed == total
    then exitSuccess
    else exitFailure
