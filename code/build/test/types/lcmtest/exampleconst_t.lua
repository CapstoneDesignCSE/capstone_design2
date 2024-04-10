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

local exampleconst_t = {}
exampleconst_t.__index = exampleconst_t

  exampleconst_t.ABC = 1
  exampleconst_t.DEF = 2
  exampleconst_t.PI = 3.1415926
  exampleconst_t.E = 2.8718
  exampleconst_t.LONG = 0xf0f0f0f0

exampleconst_t.name = 'lcmtest.exampleconst_t'
exampleconst_t.packagename = 'lcmtest'
exampleconst_t.shortname = 'exampleconst_t'

function exampleconst_t:new()

  local obj = {}

  obj.my_octet = 0

  setmetatable(obj, self)

  return obj
end

function exampleconst_t._get_hash_recursive(parents)

  local newparents = {}

  for _, v in ipairs(parents) do
    if v == exampleconst_t then return lcm._hash.new('0x0') end
    table.insert(newparents, v)
  end

  table.insert(newparents, exampleconst_t)

  local hash = lcm._hash.new('0x1ea3d29b9ee2e009')
  hash:rotate(1)

  return hash
end

exampleconst_t._packed_fingerprint = lcm._pack.pack('>X', exampleconst_t._get_hash_recursive({}))

function exampleconst_t:encode()

  return exampleconst_t._packed_fingerprint .. self:_encode_one()
end

function exampleconst_t:_encode_one()

  local buf_table = {}

  table.insert(buf_table, lcm._pack.pack('>b', self.my_octet))

  return table.concat(buf_table)
end

function exampleconst_t.decode(data)

  if data:sub(1, 8) ~= exampleconst_t._packed_fingerprint then
    error('bad fingerprint')
  end

  return exampleconst_t._decode_one(data:sub(9))
end

function exampleconst_t._decode_one(data)

  if not data.read then
    data = _buffer_helper:new(data)
  end

  local obj = exampleconst_t:new()

  obj.my_octet = lcm._pack.unpack('>b', data:read(1))

  return obj
end

return exampleconst_t

