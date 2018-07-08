module Problems where

import qualified Data.Map as M

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
import E019
import E020
import E021
import E022
import E035
import E036
import E037
import E038
import E039
import E040
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
    , (19, PN e19)
    , (20, PN e20)
    , (21, PN e21)
    , (22, PF e22 "E022.txt")
    , (35, PN e35)
    , (36, PN e36)
    , (37, PN e37)
    , (38, PN e38)
    , (39, PN e39)
    , (40, PN e40)
    , (43, PN e43)
    ]
