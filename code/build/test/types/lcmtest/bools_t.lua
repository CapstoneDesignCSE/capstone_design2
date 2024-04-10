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

local bools_t = {}
bools_t.__index = bools_t

bools_t.name = 'lcmtest.bools_t'
bools_t.packagename = 'lcmtest'
bools_t.shortname = 'bools_t'

function bools_t:new()

  local obj = {}

  obj.one_bool = false
  obj.fixed_array = {}
  for d0 = 1, 3 do
    obj.fixed_array[d0] = false
  end
  obj.num_a = 0
  obj.num_b = 0
  obj.one_dim_array = {}
  obj.two_dim_array = {}

  setmetatable(obj, self)

  return obj
end

function bools_t._get_hash_recursive(parents)

  local newparents = {}

  for _, v in ipairs(parents) do
    if v == bools_t then return lcm._hash.new('0x0') end
    table.insert(newparents, v)
  end

  table.insert(newparents, bools_t)

  local hash = lcm._hash.new('0x91cff66a81b52b83')
  hash:rotate(1)

  return hash
end

bools_t._packed_fingerprint = lcm._pack.pack('>X', bools_t._get_hash_recursive({}))

function bools_t:encode()

  return bools_t._packed_fingerprint .. self:_encode_one()
end

function bools_t:_encode_one()

  local buf_table = {}

  table.insert(buf_table, lcm._pack.pack('>?', self.one_bool))
  table.insert(buf_table, lcm._pack.pack('>3?', unpack(self.fixed_array)))
  table.insert(buf_table, lcm._pack.pack('>bb', self.num_a, self.num_b))
  table.insert(buf_table, lcm._pack.pack(string.format('>%d?', self.num_a), unpack(self.one_dim_array)))
  for i0 = 1, self.num_a do
    table.insert(buf_table, lcm._pack.pack(string.format('>%d?', self.num_b), unpack(self.two_dim_array[i0])))
  end

  return table.concat(buf_table)
end

function bools_t.decode(data)

  if data:sub(1, 8) ~= bools_t._packed_fingerprint then
    error('bad fingerprint')
  end

  return bools_t._decode_one(data:sub(9))
end

function bools_t._decode_one(data)

  if not data.read then
    data = _buffer_helper:new(data)
  end

  local obj = bools_t:new()

  obj.one_bool = lcm._pack.unpack('>?', data:read(1))
  obj.fixed_array = {lcm._pack.unpack('>3?', data:read(3))}
  obj.num_a, obj.num_b = lcm._pack.unpack('>bb', data:read(2))
  obj.one_dim_array = {lcm._pack.unpack(string.format('>%d?', obj.num_a), data:read(obj.num_a))}
  obj.two_dim_array = {}
  for i0 = 1, obj.num_a do
    obj.two_dim_array[i0] = {lcm._pack.unpack(string.format('>%d?', obj.num_b), data:read(obj.num_b))}
  end

  return obj
end

return bools_t

