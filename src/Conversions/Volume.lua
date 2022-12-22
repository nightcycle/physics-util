--!strict
--- @type Liter Float
--- @within Physics
export type Liter = number

--- @type Milliliter Float
--- @within Physics
export type Milliliter = number

--- @type Kiloliter Float
--- @within Physics
export type Kiloliter = number

--- @type Cup Float
--- @within Physics
export type Cup = number

--- @type Pint Float
--- @within Physics
export type Pint = number

--- @type Quart Float
--- @within Physics
export type Quart = number

--- @type Gallon Float
--- @within Physics
export type Gallon = number

--- @type CubicFeet Float
--- @within Physics
export type CubicFeet = number

--- @type CubicInch Float
--- @within Physics
export type CubicInch = number

--- @type CubicMeter Float
--- @within Physics
export type CubicMeter = number

-- Constant
local GALLONS_IN_LITER = 0.264172
local MILLILITERS_IN_LITER = 1000
local KILOLITERS_IN_LITER = 1/1000
local QUARTS_IN_LITER = 1.05669
local PINTS_IN_LITER = 2.11338
local CUPS_IN_LITER = 4.16667
local CUBIC_FEET_IN_LITER = 0.0353147
local CUBIC_INCHES_IN_LITER = 61.0237
local CUBIC_METERS_IN_LITER = 1/1000

local Liter = {}
function Liter.toMilliliter(liter: Liter): Milliliter
	return liter * MILLILITERS_IN_LITER
end
function Liter.toKiloliter(liter: Liter): Kiloliter
	return liter * KILOLITERS_IN_LITER
end
function Liter.toCup(liter: Liter): Cup
	return liter * CUPS_IN_LITER
end
function Liter.toPint(liter: Liter): Pint
	return liter * PINTS_IN_LITER
end
function Liter.toQuart(liter: Liter): Quart
	return liter * QUARTS_IN_LITER
end
function Liter.toGallon(liter: Liter): Gallon
	return liter * GALLONS_IN_LITER
end
function Liter.toCubicFeet(liter: Liter): CubicFeet
	return liter * CUBIC_FEET_IN_LITER
end
function Liter.toCubicInch(liter: Liter): CubicInch
	return liter * CUBIC_INCHES_IN_LITER
end
function Liter.toCubicMeter(liter: Liter): CubicInch
	return liter * CUBIC_METERS_IN_LITER
end

local Milliliter = {}
function Milliliter.toLiter(milliliter: Milliliter): Liter
	return milliliter / MILLILITERS_IN_LITER
end
function Milliliter.toKiloliter(milliliter: Milliliter): Kiloliter
	return Liter.toKiloliter(Milliliter.toLiter(milliliter))
end
function Milliliter.toCup(milliliter: Milliliter): Cup
	return Liter.toCup(Milliliter.toLiter(milliliter))
end
function Milliliter.toPint(milliliter: Milliliter): Pint
	return Liter.toPint(Milliliter.toLiter(milliliter))
end
function Milliliter.toQuart(milliliter: Milliliter): Quart
	return Liter.toQuart(Milliliter.toLiter(milliliter))
end
function Milliliter.toGallon(milliliter: Milliliter): Gallon
	return Liter.toGallon(Milliliter.toLiter(milliliter))
end
function Milliliter.toCubicFeet(milliliter: Milliliter): CubicFeet
	return Liter.toCubicFeet(Milliliter.toLiter(milliliter))
end
function Milliliter.toCubicInch(milliliter: Milliliter): CubicInch
	return Liter.toCubicInch(Milliliter.toLiter(milliliter))
end
function Milliliter.toCubicMeter(milliliter: Milliliter): CubicInch
	return Liter.toCubicMeter(Milliliter.toLiter(milliliter))
end

local Kiloliter = {}
function Kiloliter.toLiter(kiloliter: Kiloliter): Liter
	return kiloliter / KILOLITERS_IN_LITER
end
function Kiloliter.toMilliliter(kiloliter: Kiloliter): Milliliter
	return Liter.toMilliliter(Kiloliter.toLiter(kiloliter))
end
function Kiloliter.toCup(kiloliter: Kiloliter): Cup
	return Liter.toCup(Kiloliter.toLiter(kiloliter))
end
function Kiloliter.toPint(kiloliter: Kiloliter): Pint
	return Liter.toPint(Kiloliter.toLiter(kiloliter))
end
function Kiloliter.toQuart(kiloliter: Kiloliter): Quart
	return Liter.toQuart(Kiloliter.toLiter(kiloliter))
end
function Kiloliter.toGallon(kiloliter: Kiloliter): Gallon
	return Liter.toGallon(Kiloliter.toLiter(kiloliter))
end
function Kiloliter.toCubicFeet(kiloliter: Kiloliter): CubicFeet
	return Liter.toCubicFeet(Kiloliter.toLiter(kiloliter))
end
function Kiloliter.toCubicInch(kiloliter: Kiloliter): CubicInch
	return Liter.toCubicInch(Kiloliter.toLiter(kiloliter))
end
function Kiloliter.toCubicMeter(kiloliter: Kiloliter): CubicInch
	return Liter.toCubicMeter(Kiloliter.toLiter(kiloliter))
end

local Cup = {}
function Cup.toLiter(cup: Cup): Liter
	return cup / CUPS_IN_LITER
end
function Cup.toKiloliter(cup: Cup): Kiloliter
	return Liter.toKiloliter(Cup.toLiter(cup))
end
function Cup.toMilliliter(cup: Cup): Milliliter
	return Liter.toMilliliter(Cup.toLiter(cup))
end
function Cup.toPint(cup: Cup): Pint
	return Liter.toPint(Cup.toLiter(cup))
end
function Cup.toQuart(cup: Cup): Quart
	return Liter.toQuart(Cup.toLiter(cup))
end
function Cup.toGallon(cup: Cup): Gallon
	return Liter.toGallon(Cup.toLiter(cup))
end
function Cup.toCubicFeet(cup: Cup): CubicFeet
	return Liter.toCubicFeet(Cup.toLiter(cup))
end
function Cup.toCubicInch(cup: Cup): CubicInch
	return Liter.toCubicInch(Cup.toLiter(cup))
end
function Cup.toCubicMeter(cup: Cup): CubicInch
	return Liter.toCubicMeter(Cup.toLiter(cup))
end

local Pint = {}
function Pint.toLiter(pint: Pint): Liter
	return pint / PINTS_IN_LITER
end
function Pint.toKiloliter(pint: Pint): Kiloliter
	return Liter.toKiloliter(Pint.toLiter(pint))
end
function Pint.toCup(pint: Pint): Cup
	return Liter.toCup(Pint.toLiter(pint))
end
function Pint.toMilliliter(pint: Milliliter): Milliliter
	return Liter.toMilliliter(Pint.toLiter(pint))
end
function Pint.toQuart(pint: Pint): Quart
	return Liter.toQuart(Pint.toLiter(pint))
end
function Pint.toGallon(pint: Pint): Gallon
	return Liter.toGallon(Pint.toLiter(pint))
end
function Pint.toCubicFeet(pint: Pint): CubicFeet
	return Liter.toCubicFeet(Pint.toLiter(pint))
end
function Pint.toCubicInch(pint: Pint): CubicInch
	return Liter.toCubicInch(Pint.toLiter(pint))
end
function Pint.toCubicMeter(pint: Pint): CubicMeter
	return Liter.toCubicMeter(Pint.toLiter(pint))
end

local Quart = {}
function Quart.toLiter(quart: Quart): Liter
	return quart / QUARTS_IN_LITER
end
function Quart.toKiloliter(quart: Quart): Kiloliter
	return Liter.toKiloliter(Quart.toLiter(quart))
end
function Quart.toCup(quart: Quart): Cup
	return Liter.toCup(Quart.toLiter(quart))
end
function Quart.toPint(quart: Quart): Pint
	return Liter.toPint(Quart.toLiter(quart))
end
function Quart.toMilliliter(quart: Quart): Milliliter
	return Liter.toMilliliter(Quart.toLiter(quart))
end
function Quart.toGallon(quart: Quart): Gallon
	return Liter.toGallon(Quart.toLiter(quart))
end
function Quart.toCubicFeet(quart: Quart): CubicFeet
	return Liter.toCubicFeet(Quart.toLiter(quart))
end
function Quart.toCubicInch(quart: Quart): CubicInch
	return Liter.toCubicInch(Quart.toLiter(quart))
end
function Quart.toCubicMeter(quart: Quart): CubicMeter
	return Liter.toCubicMeter(Quart.toLiter(quart))
end

local Gallon = {}
function Gallon.toLiter(gallon: Gallon): Liter
	return gallon / GALLONS_IN_LITER
end
function Gallon.toKiloliter(gallon: Gallon): Kiloliter
	return Liter.toKiloliter(Gallon.toLiter(gallon))
end
function Gallon.toCup(gallon: Gallon): Cup
	return Liter.toCup(Gallon.toLiter(gallon))
end
function Gallon.toPint(gallon: Gallon): Pint
	return Liter.toPint(Gallon.toLiter(gallon))
end
function Gallon.toQuart(gallon: Gallon): Quart
	return Liter.toQuart(Gallon.toLiter(gallon))
end
function Gallon.toMilliliter(gallon: Gallon): Milliliter
	return Liter.toMilliliter(Gallon.toLiter(gallon))
end
function Gallon.toCubicFeet(gallon: Gallon): CubicFeet
	return Liter.toCubicFeet(Gallon.toLiter(gallon))
end
function Gallon.toCubicInch(gallon: Gallon): CubicInch
	return Liter.toCubicInch(Gallon.toLiter(gallon))
end
function Gallon.toCubicMeter(gallon: Gallon): CubicMeter
	return Liter.toCubicMeter(Gallon.toLiter(gallon))
end

local CubicFeet = {}
function CubicFeet.toLiter(cubicFeet: CubicFeet): Liter
	return cubicFeet / CUBIC_FEET_IN_LITER
end
function CubicFeet.toKiloliter(cubicFeet: CubicFeet): Kiloliter
	return Liter.toKiloliter(CubicFeet.toLiter(cubicFeet))
end
function CubicFeet.toCup(cubicFeet: CubicFeet): Cup
	return Liter.toCup(CubicFeet.toLiter(cubicFeet))
end
function CubicFeet.toPint(cubicFeet: CubicFeet): Pint
	return Liter.toPint(CubicFeet.toLiter(cubicFeet))
end
function CubicFeet.toQuart(cubicFeet: CubicFeet): Quart
	return Liter.toQuart(CubicFeet.toLiter(cubicFeet))
end
function CubicFeet.toGallon(cubicFeet: CubicFeet): Gallon
	return Liter.toGallon(CubicFeet.toLiter(cubicFeet))
end
function CubicFeet.toMilliliter(cubicFeet: CubicFeet): Milliliter
	return Liter.toMilliliter(CubicFeet.toLiter(cubicFeet))
end
function CubicFeet.toCubicInch(cubicFeet: CubicFeet): CubicInch
	return Liter.toCubicInch(CubicFeet.toLiter(cubicFeet))
end
function CubicFeet.toCubicMeter(cubicFeet: CubicFeet): CubicMeter
	return Liter.toCubicMeter(CubicFeet.toLiter(cubicFeet))
end

local CubicInch = {}
function CubicInch.toLiter(cubicInch: CubicInch): Liter
	return cubicInch / MILLILITERS_IN_LITER
end
function CubicInch.toKiloliter(cubicInch: CubicInch): Kiloliter
	return Liter.toKiloliter(CubicInch.toLiter(cubicInch))
end
function CubicInch.toCup(cubicInch: CubicInch): Cup
	return Liter.toCup(CubicInch.toLiter(cubicInch))
end
function CubicInch.toPint(cubicInch: CubicInch): Pint
	return Liter.toPint(CubicInch.toLiter(cubicInch))
end
function CubicInch.toQuart(cubicInch: CubicInch): Quart
	return Liter.toQuart(CubicInch.toLiter(cubicInch))
end
function CubicInch.toGallon(cubicInch: CubicInch): Gallon
	return Liter.toGallon(CubicInch.toLiter(cubicInch))
end
function CubicInch.toCubicFeet(cubicInch: CubicInch): CubicFeet
	return Liter.toCubicFeet(CubicInch.toLiter(cubicInch))
end
function CubicInch.toMilliliter(cubicInch: CubicInch): Milliliter
	return Liter.toMilliliter(CubicInch.toLiter(cubicInch))
end
function CubicInch.toCubicMeter(cubicInch: CubicInch): CubicMeter
	return Liter.toCubicMeter(CubicInch.toLiter(cubicInch))
end

local CubicMeter = {}
function CubicMeter.toLiter(cubicMeter: CubicMeter): Liter
	return cubicMeter / CUBIC_METERS_IN_LITER
end
function CubicMeter.toKiloliter(cubicMeter: CubicMeter): Kiloliter
	return Liter.toKiloliter(CubicMeter.toLiter(cubicMeter))
end
function CubicMeter.toCup(cubicMeter: CubicMeter): Cup
	return Liter.toCup(CubicMeter.toLiter(cubicMeter))
end
function CubicMeter.toPint(cubicMeter: CubicMeter): Pint
	return Liter.toPint(CubicMeter.toLiter(cubicMeter))
end
function CubicMeter.toQuart(cubicMeter: CubicMeter): Quart
	return Liter.toQuart(CubicMeter.toLiter(cubicMeter))
end
function CubicMeter.toGallon(cubicMeter: CubicMeter): Gallon
	return Liter.toGallon(CubicMeter.toLiter(cubicMeter))
end
function CubicMeter.toCubicFeet(cubicMeter: CubicMeter): CubicFeet
	return Liter.toCubicFeet(CubicMeter.toLiter(cubicMeter))
end
function CubicMeter.toCubicInch(cubicMeter: CubicMeter): CubicInch
	return Liter.toCubicInch(CubicMeter.toLiter(cubicMeter))
end
function CubicMeter.toMilliliter(cubicMeter: CubicMeter): Milliliter
	return Liter.toMilliliter(CubicMeter.toLiter(cubicMeter))
end

return {
	Liter = Liter,
	Milliliter = Milliliter,
	Kiloliter = Kiloliter,
	Cup = Cup,
	Pint = Pint,
	Quart = Quart,
	Gallon = Gallon,
	CubicFeet = CubicFeet,
	CubicInch = CubicInch,
}