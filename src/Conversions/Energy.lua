--!strict
--- @type Joule Float
--- @within Physics
export type Joule = number

--- @type Kilojoule Float
--- @within Physics
export type Kilojoule = number

--- @type Megajoule Float
--- @within Physics
export type Megajoule = number

--- @type Gigajoule Float
--- @within Physics
export type Gigajoule = number

--- @type Calorie Float
--- @within Physics
export type Calorie = number

--- @type Kilocalorie Float
--- @within Physics
export type Kilocalorie = number

--- @type BritishThermalUnit Float
--- @within Physics
export type BritishThermalUnit = number

-- Constants
local KILOCALORIES_IN_JOULE = 0.000239006
local CALORIES_IN_JOULE = KILOCALORIES_IN_JOULE / 1000
local BTUS_IN_JOULE = 0.000947817
local KJ_IN_JOULE = 1/1000
local MJ_IN_JOULE = KJ_IN_JOULE/1000
local GJ_IN_JOULE = MJ_IN_JOULE/1000

local Joule = {}
function Joule.toKilojoule(joule: Joule): Kilojoule
	return joule * KJ_IN_JOULE
end
function Joule.toMegajoule(joule: Joule): Megajoule
	return joule * MJ_IN_JOULE
end
function Joule.toCalorie(joule: Joule): Calorie
	return joule * CALORIES_IN_JOULE
end
function Joule.toKilocalorie(joule: Joule): Kilocalorie
	return joule * KILOCALORIES_IN_JOULE
end
function Joule.toBritishThermalUnit(joule: Joule): BritishThermalUnit
	return joule * BTUS_IN_JOULE
end
function Joule.toGigajoule(joule: Joule): Gigajoule
	return joule * GJ_IN_JOULE
end

local Kilojoule = {}
function Kilojoule.toJoule(kilojoule: Kilojoule): Joule
	return kilojoule / KJ_IN_JOULE
end
function Kilojoule.toMegajoule(kilojoule: Kilojoule): Megajoule
	return Joule.toMegajoule(Kilojoule.toJoule(kilojoule))
end
function Kilojoule.toCalorie(kilojoule: Kilojoule): Calorie
	return Joule.toCalorie(Kilojoule.toJoule(kilojoule))
end
function Kilojoule.toKilocalorie(kilojoule: Kilojoule): Kilocalorie
	return Joule.toKilocalorie(Kilojoule.toJoule(kilojoule))
end
function Kilojoule.toBritishThermalUnit(kilojoule: Kilojoule): BritishThermalUnit
	return Joule.toBritishThermalUnit(Kilojoule.toJoule(kilojoule))
end
function Kilojoule.toGigajoule(kilojoule: Kilojoule): Gigajoule
	return Joule.toGigajoule(Kilojoule.toJoule(kilojoule))
end


local Megajoule = {}
function Megajoule.toJoule(megajoule: Megajoule): Joule
	return megajoule / KJ_IN_JOULE
end
function Megajoule.toKilojoule(megajoule: Megajoule): Kilojoule
	return Joule.toKilojoule(Megajoule.toJoule(megajoule))
end
function Megajoule.toCalorie(megajoule: Megajoule): Calorie
	return Joule.toCalorie(Megajoule.toJoule(megajoule))
end
function Megajoule.toKilocalorie(megajoule: Megajoule): Kilocalorie
	return Joule.toKilocalorie(Megajoule.toJoule(megajoule))
end
function Megajoule.toBritishThermalUnit(megajoule: Megajoule): BritishThermalUnit
	return Joule.toBritishThermalUnit(Megajoule.toJoule(megajoule))
end
function Megajoule.toGigajoule(megajoule: Megajoule): Gigajoule
	return Joule.toGigajoule(Megajoule.toJoule(megajoule))
end

local Calorie = {}
function Calorie.toJoule(calorie: Calorie): Joule
	return calorie / CALORIES_IN_JOULE
end
function Calorie.toKilojoule(calorie: Calorie): Kilojoule
	return Joule.toKilojoule(Calorie.toJoule(calorie))
end
function Calorie.toMegajoule(calorie: Calorie): Megajoule
	return Joule.toMegajoule(Calorie.toJoule(calorie))
end
function Calorie.toKilocalorie(calorie: Calorie): Kilocalorie
	return Joule.toKilocalorie(Calorie.toJoule(calorie))
end
function Calorie.toBritishThermalUnit(calorie: Calorie): BritishThermalUnit
	return Joule.toBritishThermalUnit(Calorie.toJoule(calorie))
end
function Calorie.toGigajoule(calorie: Calorie): Gigajoule
	return Joule.toGigajoule(Calorie.toJoule(calorie))
end

local Kilocalorie = {}
function Kilocalorie.toJoule(kilocalorie: Kilocalorie): Joule
	return kilocalorie / CALORIES_IN_JOULE
end
function Kilocalorie.toKilojoule(kilocalorie: Kilocalorie): Kilojoule
	return Joule.toKilojoule(Kilocalorie.toJoule(kilocalorie))
end
function Kilocalorie.toMegajoule(kilocalorie: Kilocalorie): Megajoule
	return Joule.toMegajoule(Kilocalorie.toJoule(kilocalorie))
end
function Kilocalorie.toCalorie(kilocalorie: Kilocalorie): Calorie
	return Joule.toCalorie(Kilocalorie.toJoule(kilocalorie))
end
function Kilocalorie.toBritishThermalUnit(kilocalorie: Kilocalorie): BritishThermalUnit
	return Joule.toBritishThermalUnit(Kilocalorie.toJoule(kilocalorie))
end
function Kilocalorie.toGigajoule(kilocalorie: Kilocalorie): Gigajoule
	return Joule.toGigajoule(Kilocalorie.toJoule(kilocalorie))
end

local BritishThermalUnit = {}
function BritishThermalUnit.toJoule(britishThermalUnit: BritishThermalUnit): Joule
	return britishThermalUnit / BTUS_IN_JOULE
end
function BritishThermalUnit.toKilojoule(britishThermalUnit: BritishThermalUnit): Kilojoule
	return Joule.toKilojoule(BritishThermalUnit.toJoule(britishThermalUnit))
end
function BritishThermalUnit.toMegajoule(britishThermalUnit: BritishThermalUnit): Megajoule
	return Joule.toMegajoule(BritishThermalUnit.toJoule(britishThermalUnit))
end
function BritishThermalUnit.toKilocalorie(britishThermalUnit: BritishThermalUnit): Kilocalorie
	return Joule.toKilocalorie(BritishThermalUnit.toJoule(britishThermalUnit))
end
function BritishThermalUnit.toCalorie(britishThermalUnit: BritishThermalUnit): Calorie
	return Joule.toCalorie(BritishThermalUnit.toJoule(britishThermalUnit))
end
function BritishThermalUnit.toGigajoule(britishThermalUnit: BritishThermalUnit): Gigajoule
	return Joule.toGigajoule(BritishThermalUnit.toJoule(britishThermalUnit))
end

local Gigajoule = {}
function Gigajoule.toJoule(gigajoule: Gigajoule): Joule
	return gigajoule / GJ_IN_JOULE
end
function Gigajoule.toKilojoule(gigajoule: Gigajoule): Kilojoule
	return Joule.toKilojoule(Gigajoule.toJoule(gigajoule))
end
function Gigajoule.toMegajoule(gigajoule: Gigajoule): Megajoule
	return Joule.toMegajoule(Gigajoule.toJoule(gigajoule))
end
function Gigajoule.toKilocalorie(gigajoule: Gigajoule): Kilocalorie
	return Joule.toKilocalorie(Gigajoule.toJoule(gigajoule))
end
function Gigajoule.toCalorie(gigajoule: Gigajoule): Calorie
	return Joule.toCalorie(Gigajoule.toJoule(gigajoule))
end
function Gigajoule.toBritishThermalUnit(gigajoule: Gigajoule): BritishThermalUnit
	return Joule.toBritishThermalUnit(Gigajoule.toJoule(gigajoule))
end

return {
	Joule = Joule,
	Kilojoule = Kilojoule,
	Megajoule = Megajoule,
	Calorie = Calorie,
	Kilocalorie = Kilocalorie,
	BritishThermalUnit = BritishThermalUnit,
	Gigajoule = Gigajoule,
}