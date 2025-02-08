local RunService = game:GetService("RunService")

local sharedModules = script.Parent
local clientProcess = require(sharedModules.process.client)
local array = require(sharedModules.dataTypes.array)
local bool = require(sharedModules.dataTypes.bool)
local buff = require(sharedModules.dataTypes.buff)
local cframe = require(sharedModules.dataTypes.cframe)
local float32 = require(sharedModules.dataTypes.float32)
local float64 = require(sharedModules.dataTypes.float64)
local inst = require(sharedModules.dataTypes.inst)
local int16 = require(sharedModules.dataTypes.int16)
local int32 = require(sharedModules.dataTypes.int32)
local int8 = require(sharedModules.dataTypes.int8)
local map = require(sharedModules.dataTypes.map)
local nothing = require(sharedModules.dataTypes.nothing)
local optional = require(sharedModules.dataTypes.optional)
local string = require(sharedModules.dataTypes.string)
local struct = require(sharedModules.dataTypes.struct)
local uint16 = require(sharedModules.dataTypes.uint16)
local uint32 = require(sharedModules.dataTypes.uint32)
local uint8 = require(sharedModules.dataTypes.uint8)
local unknown = require(sharedModules.dataTypes.unknown)
local vec2 = require(sharedModules.dataTypes.vec2)
local vec3 = require(sharedModules.dataTypes.vec3)
local namespace = require(sharedModules.namespaces.namespace)
local definePacket = require(sharedModules.packets.definePacket)
local serverProcess = require(sharedModules.process.server)
local values = require(sharedModules.replicated.values)
local types = require(sharedModules.types)

values.start()

if RunService:IsServer() then
	serverProcess.start()
else
	clientProcess.start()
end

return (
	table.freeze({
		definePacket = definePacket,
		defineNamespace = namespace,

		array = array,
		bool = bool(),
		optional = optional,
		uint8 = uint8(),
		uint16 = uint16(),
		uint32 = uint32(),
		int8 = int8(),
		int16 = int16(),
		int32 = int32(),
		float32 = float32(),
		float64 = float64(),
		cframe = cframe(),
		string = string(),
		vec2 = vec2(),
		vec3 = vec3(),
		buff = buff(),
		struct = struct,
		map = map,
		inst = inst(),
		unknown = unknown(),
		nothing = nothing(),
	}) :: any
) :: types.ByteNet
