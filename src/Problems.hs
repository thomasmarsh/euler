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
import E012
import E013
import E014
import E015
import E016
import E017
import E018
import E019
import E020
import E021
import E022
import E023
import E024
import E025
import E026
import E027
import E028
import E029
import E030
import E031
import E032
import E033
import E034
import E035
import E036
import E037
import E038
import E039
import E040
import E041
import E042
import E043
import E044
import E045
import E046
import E047
import E048
import E049
import E050
import E051
import E052
import E092

newtype Result = RN Integer deriving (Eq)

instance Show Result where
    show (RN n) = show n

data Problem
    = PN Result
    | PF (String -> Result) FilePath

problems :: M.Map Int Problem
problems = M.fromList
    [ (1,  PN (RN e1))
    , (2,  PN (RN e2))
    , (3,  PN (RN e3))
    , (4,  PN (RN e4))
    , (5,  PN (RN e5))
    , (6,  PN (RN e6))
    , (7,  PN (RN e7))
    , (8,  PN (RN e8))
    , (9,  PN (RN e9))
    , (10, PN (RN e10))
    , (11, PN (RN e11))
    , (12, PN (RN e12))
    , (13, PN (RN e13))
    , (14, PN (RN e14))
    , (15, PN (RN e15))
    , (16, PN (RN e16))
    , (17, PN (RN e17))
    , (18, PN (RN e18))
    , (19, PN (RN e19))
    , (20, PN (RN e20))
    , (21, PN (RN e21))
    , (22, PF (RN . e22) "E022.txt")
    , (23, PN (RN e23))
    , (24, PN (RN e24))
    , (25, PN (RN e25))
    , (26, PN (RN e26))
    , (27, PN (RN e27))
    , (28, PN (RN e28))
    , (29, PN (RN e29))
    , (30, PN (RN e30))
    , (31, PN (RN e31))
    , (32, PN (RN e32))
    , (33, PN (RN e33))
    , (34, PN (RN e34))
    , (35, PN (RN e35))
    , (36, PN (RN e36))
    , (37, PN (RN e37))
    , (38, PN (RN e38))
    , (39, PN (RN e39))
    , (40, PN (RN e40))
    , (41, PN (RN e41))
    , (42, PF (RN . e42) "E042.txt")
    , (43, PN (RN e43))
    , (44, PN (RN e44))
    , (45, PN (RN e45))
    , (46, PN (RN e46))
    , (47, PN (RN e47))
    , (48, PN (RN e48))
    , (49, PN (RN e49))
    , (50, PN (RN e50))
    , (51, PN (RN e51))
    , (52, PN (RN e52))
    , (92, PN (RN e92))
    ]

newtype Solutions = SN Integer deriving (Eq, Show)

-- Used for validation
solutions :: M.Map Int Result
solutions = M.fromList
    [ (1,   RN 233168)
    , (2,   RN 4613732)
    , (3,   RN 6857)
    , (4,   RN 906609)
    , (5,   RN 232792560)
    , (6,   RN 25164150)
    , (7,   RN 104743)
    , (8,   RN 23514624000)
    , (9,   RN 31875000)
    , (10,  RN 142913828922)
    , (11,  RN 70600674)
    , (12,  RN 76576500)
    , (13,  RN 5537376230)
    , (14,  RN 837799)
    , (15,  RN 137846528820)
    , (16,  RN 1366)
    , (17,  RN 21124)
    , (18,  RN 1074)
    , (19,  RN 171)
    , (20,  RN 648)
    , (21,  RN 31626)
    , (22,  RN 871198282)
    , (23,  RN 4179871)
    , (24,  RN 2783915460)
    , (25,  RN 4782)
    , (26,  RN 983)
    , (27,  RN (-59231))
    , (28,  RN 669171001)
    , (29,  RN 9183)
    , (30,  RN 443839)
    , (31,  RN 73682)
    , (32,  RN 45228)
    , (33,  RN 100)
    , (34,  RN 40730)
    , (35,  RN 55)
    , (36,  RN 872187)
    , (37,  RN 748317)
    , (38,  RN 932718654)
    , (39,  RN 840)
    , (40,  RN 210)
    , (41,  RN 7652413)
    , (42,  RN 162)
    , (43,  RN 16695334890)
    , (44,  RN 5482660)
    , (45,  RN 1533776805)
    , (46,  RN 5777)
    , (47,  RN 134043)
    , (48,  RN 9110846700)
    , (49,  RN 296962999629)
    , (50,  RN 997651)
    , (51,  RN 121313)
    , (52,  RN 142857)
    , (53,  RN 4075)
    , (54,  RN 376)
    , (55,  RN 249)
    , (56,  RN 972)
    , (57,  RN 153)
    , (58,  RN 26241)
    , (59,  RN 107359)
    , (60,  RN 26033)
    , (61,  RN 28684)
    , (62,  RN 127035954683)
    , (63,  RN 49)
    , (64,  RN 1322)
    , (65,  RN 272)
    , (66,  RN 661)
    , (67,  RN 7273)
    , (68,  RN 6531031914842725)
    , (69,  RN 510510)
    , (70,  RN 8319823)
    , (71,  RN 428570)
    , (72,  RN 303963552391)
    , (73,  RN 7295372)
    , (74,  RN 402)
    , (75,  RN 161667)
    , (76,  RN 190569291)
    , (77,  RN 71)
    , (78,  RN 55374)
    , (79,  RN 73162890)
    , (80,  RN 40886)
    , (81,  RN 427337)
    , (82,  RN 260324)
    , (83,  RN 425185)
    , (84,  RN 101524)
    , (85,  RN 2772)
    , (86,  RN 1818)
    , (87,  RN 1097343)
    , (88,  RN 7587457)
    , (89,  RN 743)
    , (90,  RN 1217)
    , (91,  RN 14234)
    , (92,  RN 8581146)
    , (93,  RN 1258)
    , (94,  RN 518408346)
    , (95,  RN 14316)
    , (96,  RN 24702)
    , (97,  RN 8739992577)
    , (98,  RN 18769)
    , (99,  RN 709)
    , (100, RN 756872327473)
    , (101, RN 37076114526)
    , (102, RN 228)
    , (103, RN 20313839404245)
    , (104, RN 329468)
    , (105, RN 73702)
    , (106, RN 21384)
    , (107, RN 259679)
    , (108, RN 180180)
    , (109, RN 38182)
    , (111, RN 612407567715)
    , (112, RN 1587000)
    , (113, RN 51161058134250)
    , (114, RN 16475640049)
    , (115, RN 168)
    , (116, RN 20492570929)
    , (117, RN 100808458960497)
    , (118, RN 44680)
    , (119, RN 248155780267521)
    , (120, RN 333082500)
    , (121, RN 2269)
    , (122, RN 1582)
    , (123, RN 21035)
    , (124, RN 21417)
    , (125, RN 2906969179)
    , (127, RN 18407904)
    , (128, RN 14516824220)
    , (129, RN 1000023)
    , (130, RN 149253)
    , (132, RN 843296)
    , (133, RN 453647705)
    , (134, RN 18613426663617118)
    , (135, RN 4989)
    , (139, RN 10057761)
    , (142, RN 1006193)
    , (145, RN 608720)
    , (146, RN 676333270)
    , (149, RN 52852124)
    , (150, RN (-271248680))
    ]
