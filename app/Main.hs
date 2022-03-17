module Main where

import Lib
import Prob001
import Prob002
import Prob003
import Prob004
import Prob005
import Prob006
import Prob007


main :: IO ()
main = print (show [
  sol001 1000,
  sol002 4000000,
  sol003 600851475143,
  sol004 999,
  sol005 20,
  sol006 100,
  sol007 10001
  ])
