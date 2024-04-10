--[[
LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
--]]

local lcm = require('lcm')

local setmetatable = setmetatable
local ipairs = ipairs
local table = table
local string = string
local unpack = unpack or table.unpack

-- buffer helper for decoding
local _buffer_helper = {}
_buffer_helper.__index = _buffer_helper

function _buffer_helper:new(data_str)

  local obj = {buffer = data_str, index = 1}
  setmetatable(obj, self)

  return obj
end

function _buffer_helper:read(n_bytes)

  local partial = self.buffer:sub(self.index, self.index + n_bytes - 1)
  self.index = self.index + n_bytes

  if self.index > #self.buffer + 1 then
    error('buffer ran out of bytes')
  end

  return partial
end

local arrays_t = {}
arrays_t.__index = arrays_t

  arrays_t.dim = 10

arrays_t.name = 'lcmtest3.arrays_t'
arrays_t.packagename = 'lcmtest3'
arrays_t.shortname = 'arrays_t'

function arrays_t:new()

  local obj = {}

  obj.arr = {}
  for d0 = 1, 10 do
    obj.arr[d0] = 0
  end

  setmetatable(obj, self)

  return obj
end

function arrays_t._get_hash_recursive(parents)

  local newparents = {}

  for _, v in ipairs(parents) do
    if v == arrays_t then return lcm._hash.new('0x0') end
    table.insert(newparents, v)
  end

  table.insert(newparents, arrays_t)

  local hash = lcm._hash.new('0x3f2258e55559faf8')
  hash:rotate(1)

  return hash
end

arrays_t._packed_fingerprint = lcm._pack.pack('>X', arrays_t._get_hash_recursive({}))

function arrays_t:encode()

  return arrays_t._packed_fingerprint .. self:_encode_one()
end

function arrays_t:_encode_one()

  local buf_table = {}

  table.insert(buf_table, lcm._pack.pack('>10b', unpack(self.arr)))

  return table.concat(buf_table)
end

function arrays_t.decode(data)

  if data:sub(1, 8) ~= arrays_t._packed_fingerprint then
    error('bad fingerprint')
  end

  return arrays_t._decode_one(data:sub(9))
end

function arrays_t._decode_one(data)

  if not data.read then
    data = _buffer_helper:new(data)
  end

  local obj = arrays_t:new()

  obj.arr = {lcm._pack.unpack('>10b', data:read(10))}

  return obj
end

return arrays_t

