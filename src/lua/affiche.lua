
-- Environment: Lua 5.2 - 5.3; OpenComputers 1.6.1.11;
-- Platform requirements: N\A
-- Command: rm 1.lua&&edit 1.lua&&1

local term = require('term')
local fs   = require('filesystem')
local ev   = require('event')

local path = '/home/affiche.txt'


if not term.isAvailable() then
  term.write('Can\'t write. Stopping.')
  return
end


if not fs.isAutorunEnabled() then
  term.write('Warning: Enabling autorun.')
  fs.setAutorunEnabled(true)
end

if not fs.exists(path) then
  term.write('Please create "' .. path .. '"\n')
  term.write('Fatal error: File does not exist. Stopping.\n')
  return
end

local file = io.open(path) --fs.open(path, 'r')

if file == nil then
  term.write('Can\'t open file. Stopping.')
  return
end

term.clear()
term.write('Press any key to close. File: "' .. path .. '"\n')
term.write(file:read('*a'))
file:close()
ev.pull('key_down') --term.read()

