module Main where

import Lib
import Prob001
import Prob002
import Prob003
import Prob004
import Prob005

main :: IO ()
main = print (show [
  sol001 1000,
  sol002 4000000,
  sol003 600851475143,
  sol004 999,
  sol005 20
  ])
