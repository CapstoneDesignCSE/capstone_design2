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

local another_type_t = {}
another_type_t.__index = another_type_t

another_type_t.name = 'lcmtest2.another_type_t'
another_type_t.packagename = 'lcmtest2'
another_type_t.shortname = 'another_type_t'

function another_type_t:new()

  local obj = {}

  obj.val = 0

  setmetatable(obj, self)

  return obj
end

function another_type_t._get_hash_recursive(parents)

  local newparents = {}

  for _, v in ipairs(parents) do
    if v == another_type_t then return lcm._hash.new('0x0') end
    table.insert(newparents, v)
  end

  table.insert(newparents, another_type_t)

  local hash = lcm._hash.new('0xd21b643a1f224c57')
  hash:rotate(1)

  return hash
end

another_type_t._packed_fingerprint = lcm._pack.pack('>X', another_type_t._get_hash_recursive({}))

function another_type_t:encode()

  return another_type_t._packed_fingerprint .. self:_encode_one()
end

function another_type_t:_encode_one()

  local buf_table = {}

  table.insert(buf_table, lcm._pack.pack('>i', self.val))

  return table.concat(buf_table)
end

function another_type_t.decode(data)

  if data:sub(1, 8) ~= another_type_t._packed_fingerprint then
    error('bad fingerprint')
  end

  return another_type_t._decode_one(data:sub(9))
end

function another_type_t._decode_one(data)

  if not data.read then
    data = _buffer_helper:new(data)
  end

  local obj = another_type_t:new()

  obj.val = lcm._pack.unpack('>i', data:read(4))

  return obj
end

return another_type_t

