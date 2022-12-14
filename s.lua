function switch(value, cases)
  for _, c in pairs(cases) do
    if c[1] == value then
      return c[2]()
    end
  end
end

-- example:
local result = switch("apple", {
  { "apple", function() return "fruit" end },
  { "car", function() return "vehicle" end },
  { "dog", function() return "animal" end },
})

print(result) 
