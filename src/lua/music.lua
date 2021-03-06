
-- Environment: Lua 5.2 - 5.3; OpenComputers 1.6.1.11;
-- Platform requirements: N\A
-- Command: rm 1.lua&&edit 1.lua&&1

local note = require('note')

-- frequency
local start = 60 --20
local stop = 95 --96 --2000
local step = 1 --1
local speed = .05 --0.2


print('Playing notes start.')
for i = start, stop, step do
  print('Playing note: ' .. i .. '/' .. stop)
  note.play(i, speed)
  if i == stop then
    break
  end
end
print('Playing notes stop.')

