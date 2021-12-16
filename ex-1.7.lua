-- Exercise 1.7: Consider the following expression:
--
-- (x and y and (not z)) or ((not y) and x)
--
-- Are the parentheses necessary? Would you recommend their use in
-- that expression?

-- They are, because the precedence order of the logical operators
-- is not > and > or.  

-- to be sure, let's do an exhaustive test
function with_parenthesis(x, y, z)
   return (x and y and (not z)) or ((not y) and x)
end


function without_parenthesis(x, y, z)
   return x and y and not z or not y and x
end

is_egal = true
for _, x in ipairs({false, true}) do
    for _, y in ipairs({false, true}) do
        for _, z in ipairs({false, true}) do
            if with_parenthesis(x,y,z) ~= without_parenthesis(x,y,z) then
                print (x, y, z)
                is_egal = false
            end
        end
    end
end

print(string.format("with_parenthes and whitout_parenthesis are %s",
                is_egal and "egals" or "not egals"))
-- The use of parenthesis make the expression arguably more readable,
-- though.




-- Idem if we use 5 parameters ???
function with_parenthesis2(x, y, z, u, t)
   return (x and y and (not z)) or ((not u) and t)
end


function without_parenthesis2(x, y, z, u, t)
   return x and y and not z or not u and t
end

is_egal = true
for _, x in ipairs({false, true}) do
    for _, y in ipairs({false, true}) do
        for _, z in ipairs({false, true}) do
            for _, u in ipairs({false, true}) do
                for _, t in ipairs({false, true}) do
                    if with_parenthesis2(x,y,z,u,t) ~= without_parenthesis2(x,y,z,u,t) then
                        print (x, y, z, u, t)
                        is_egal = false
                    end
                end
            end
        end
    end
end


print(string.format("with_parenthes2 and whitout_parenthesis2 are %s",
                is_egal and "egals" or "not egals"))


