-- Exercise 3.2: Explain the following results:
--
-- > math.maxinteger * 2                --> -2

math.maxinteger + math.mininteger       --> -1
math.maxinteger + (math.maxinteger + 1) --> -1
math.maxinteger * 2 + 1                 --> -1
math.maxinteger * 2                     --> -2

-- > math.mininteger * 2                --> 0

math.maxinteger * 2                     --> -2
(math.mininteger - 1) * 2               --> -2
math.mininteger * 2 - 2                 --> -2
math.mininteger * 2                     --> 0


-- > math.mininteger * math.mininteger  --> 0
-- math.mininteger = 0x80...0
-- multiplying by 0x80...0 is equivalent to a 63 left bit shift
-- so math.mininteger * math.mininteger = 0x80...0 << 63 === 0 [2⁶⁴]
 math.mininteger * math.mininteger  --> 0

-- > math.maxinteger * math.maxinteger  --> 1
-- math.maxinteger * math.maxinteger = (math.mininteger - 1)²
--  = math.mininteger² - 2*math.mininteger + 1
--  = 0 - 0 + 2
--  = 1
math.maxinteger * math.maxinteger  --> 1
