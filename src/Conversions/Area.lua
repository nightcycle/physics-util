--!strict
--- @type SquareMeter Float
--- @within Physics
export type SquareMeter = number

--- @type SquareCentimeter Float
--- @within Physics
export type SquareCentimeter = number

--- @type SquareMillimeter Float
--- @within Physics
export type SquareMillimeter = number

--- @type SquareFoot Float
--- @within Physics
export type SquareFeet = number

--- @type SquareInch Float
--- @within Physics
export type SquareInch = number

--- @type SquareYard Float
--- @within Physics
export type SquareYard = number

--- @type SquareKilometer Float
--- @within Physics
export type SquareKilometer = number

--- @type SquareMile Float
--- @within Physics
export type SquareMile = number

--- @type Acre Float
--- @within Physics
export type Acre = number

--- @type Hectare Float
--- @within Physics
export type Hectare = number

-- Constants
local ACRES_IN_SQUARE_METER = 0.000247105
local HECTARES_IN_SQUARE_METER = 10^-4
local SQUARE_INCHES_IN_SQUARE_METER = 1550
local SQUARE_FEET_IN_SQUARE_METER = 10.7639
local SQUARE_YARD_IN_SQUARE_METER = 1.19599
local SQUARE_MILE_IN_SQUARE_METER = 3.861*10^-7
local SQUARE_KILOMETERS_IN_SQUARE_METER = 10^-6
local SQUARE_CENTIMERS_IN_SQUARE_METER = 10000
local SQUARE_MILLIMETERS_IN_SQUARE_METER = 1000000
local SQUARE_CENTIMETERS_IN_ROBLOX = 28^2
local SQUARE_METERS_IN_ROBLOX = SQUARE_CENTIMETERS_IN_ROBLOX/(100^2)

local SquareMeter = {}
function SquareMeter.toSquareCentimeter(squareMeter: SquareMeter): SquareCentimeter
	return squareMeter * SQUARE_CENTIMERS_IN_SQUARE_METER
end
function SquareMeter.toSquareMillimeter(squareMeter: SquareMeter): SquareMillimeter
	return squareMeter * SQUARE_MILLIMETERS_IN_SQUARE_METER
end
function SquareMeter.toSquareKilometer(squareMeter: SquareMeter): SquareKilometer
	return squareMeter * SQUARE_KILOMETERS_IN_SQUARE_METER
end
function SquareMeter.toSquareMile(squareMeter: SquareMeter): SquareMile
	return squareMeter * SQUARE_MILE_IN_SQUARE_METER
end
function SquareMeter.toSquareYard(squareMeter: SquareMeter): SquareYard
	return squareMeter * SQUARE_YARD_IN_SQUARE_METER
end
function SquareMeter.toSquareFeet(squareMeter: SquareMeter): SquareFeet
	return squareMeter * SQUARE_FEET_IN_SQUARE_METER
end
function SquareMeter.toSquareInch(squareMeter: SquareMeter): SquareInch
	return squareMeter * SQUARE_INCHES_IN_SQUARE_METER
end
function SquareMeter.toHectare(squareMeter: SquareMeter): Hectare
	return squareMeter * HECTARES_IN_SQUARE_METER
end
function SquareMeter.toAcre(squareMeter: SquareMeter): Acre
	return squareMeter * ACRES_IN_SQUARE_METER
end
function SquareMeter.toRoblox(squareMeter: SquareMeter): number
	return squareMeter / SQUARE_METERS_IN_ROBLOX
end

local SquareCentimeter = {}
function SquareCentimeter.toSquareMeter(squareCentimeter: SquareCentimeter): SquareMeter
	return squareCentimeter / SQUARE_CENTIMERS_IN_SQUARE_METER
end
function SquareCentimeter.toSquareMillimeter(squareCentimeter: SquareCentimeter): SquareMillimeter
	return SquareMeter.toSquareMillimeter(SquareCentimeter.toSquareMeter(squareCentimeter))
end
function SquareCentimeter.toSquareKilometer(squareCentimeter: SquareCentimeter): SquareKilometer
	return SquareMeter.toSquareKilometer(SquareCentimeter.toSquareMeter(squareCentimeter))
end
function SquareCentimeter.toSquareMile(squareCentimeter: SquareCentimeter): SquareMile
	return SquareMeter.toSquareMile(SquareCentimeter.toSquareMeter(squareCentimeter))
end
function SquareCentimeter.toSquareYard(squareCentimeter: SquareCentimeter): SquareYard
	return SquareMeter.toSquareYard(SquareCentimeter.toSquareMeter(squareCentimeter))
end
function SquareCentimeter.toSquareFeet(squareCentimeter: SquareCentimeter): SquareFeet
	return SquareMeter.toSquareFeet(SquareCentimeter.toSquareMeter(squareCentimeter))
end
function SquareCentimeter.toSquareInch(squareCentimeter: SquareCentimeter): SquareInch
	return SquareMeter.toSquareInch(SquareCentimeter.toSquareMeter(squareCentimeter))
end
function SquareCentimeter.toHectare(squareCentimeter: SquareCentimeter): Hectare
	return SquareMeter.toHectare(SquareCentimeter.toSquareMeter(squareCentimeter))
end
function SquareCentimeter.toAcre(squareCentimeter: SquareCentimeter): Acre
	return SquareMeter.toAcre(SquareCentimeter.toSquareMeter(squareCentimeter))
end
function SquareCentimeter.toRoblox(squareCentimeter: SquareCentimeter): number
	return SquareMeter.toRoblox(SquareCentimeter.toSquareMeter(squareCentimeter))
end

local SquareMillimeter = {}
function SquareMillimeter.toSquareMeter(squareMillimeter: SquareMillimeter): SquareMeter
	return squareMillimeter / SQUARE_MILLIMETERS_IN_SQUARE_METER
end
function SquareMillimeter.toSquareCentimeter(squareMillimeter: SquareMillimeter): SquareMillimeter
	return SquareMeter.toSquareCentimeter(SquareMillimeter.toSquareMeter(squareMillimeter))
end
function SquareMillimeter.toSquareKilometer(squareMillimeter: SquareMillimeter): SquareKilometer
	return SquareMeter.toSquareKilometer(SquareMillimeter.toSquareMeter(squareMillimeter))
end
function SquareMillimeter.toSquareMile(squareMillimeter: SquareMillimeter): SquareMile
	return SquareMeter.toSquareMile(SquareMillimeter.toSquareMeter(squareMillimeter))
end
function SquareMillimeter.toSquareYard(squareMillimeter: SquareMillimeter): SquareYard
	return SquareMeter.toSquareYard(SquareMillimeter.toSquareMeter(squareMillimeter))
end
function SquareMillimeter.toSquareFeet(squareMillimeter: SquareMillimeter): SquareFeet
	return SquareMeter.toSquareFeet(SquareMillimeter.toSquareMeter(squareMillimeter))
end
function SquareMillimeter.toSquareInch(squareMillimeter: SquareMillimeter): SquareInch
	return SquareMeter.toSquareInch(SquareMillimeter.toSquareMeter(squareMillimeter))
end
function SquareMillimeter.toHectare(squareMillimeter: SquareMillimeter): Hectare
	return SquareMeter.toHectare(SquareMillimeter.toSquareMeter(squareMillimeter))
end
function SquareMillimeter.toAcre(squareMillimeter: SquareMillimeter): Acre
	return SquareMeter.toAcre(SquareMillimeter.toSquareMeter(squareMillimeter))
end
function SquareMillimeter.toRoblox(squareMillimeter: SquareMillimeter): number
	return SquareMeter.toRoblox(SquareMillimeter.toSquareMeter(squareMillimeter))
end

local SquareFeet = {}
function SquareFeet.toSquareMeter(squareFeet: SquareFeet): SquareMeter
	return squareFeet / SQUARE_FEET_IN_SQUARE_METER
end
function SquareFeet.toSquareMillimeter(squareFeet: SquareFeet): SquareMillimeter
	return SquareMeter.toSquareMillimeter(SquareFeet.toSquareMeter(squareFeet))
end
function SquareFeet.toSquareKilometer(squareFeet: SquareFeet): SquareKilometer
	return SquareMeter.toSquareKilometer(SquareFeet.toSquareMeter(squareFeet))
end
function SquareFeet.toSquareMile(squareFeet: SquareFeet): SquareMile
	return SquareMeter.toSquareMile(SquareFeet.toSquareMeter(squareFeet))
end
function SquareFeet.toSquareYard(squareFeet: SquareFeet): SquareYard
	return SquareMeter.toSquareYard(SquareFeet.toSquareMeter(squareFeet))
end
function SquareFeet.toSquareCentimeter(squareFeet: SquareFeet): SquareCentimeter
	return SquareMeter.toSquareCentimeter(SquareFeet.toSquareMeter(squareFeet))
end
function SquareFeet.toSquareInch(squareFeet: SquareFeet): SquareInch
	return SquareMeter.toSquareInch(SquareFeet.toSquareMeter(squareFeet))
end
function SquareFeet.toHectare(squareFeet: SquareFeet): Hectare
	return SquareMeter.toHectare(SquareFeet.toSquareMeter(squareFeet))
end
function SquareFeet.toAcre(squareFeet: SquareFeet): Acre
	return SquareMeter.toAcre(SquareFeet.toSquareMeter(squareFeet))
end
function SquareFeet.toRoblox(squareFeet: SquareFeet): number
	return SquareMeter.toRoblox(SquareFeet.toSquareMeter(squareFeet))
end

local SquareInch = {}
function SquareInch.toSquareMeter(squareInch: SquareInch): SquareMeter
	return squareInch / SQUARE_INCHES_IN_SQUARE_METER
end
function SquareInch.toSquareMillimeter(squareInch: SquareInch): SquareMillimeter
	return SquareMeter.toSquareMillimeter(SquareInch.toSquareMeter(squareInch))
end
function SquareInch.toSquareKilometer(squareInch: SquareInch): SquareKilometer
	return SquareMeter.toSquareKilometer(SquareInch.toSquareMeter(squareInch))
end
function SquareInch.toSquareMile(squareInch: SquareInch): SquareMile
	return SquareMeter.toSquareMile(SquareInch.toSquareMeter(squareInch))
end
function SquareInch.toSquareYard(squareInch: SquareInch): SquareYard
	return SquareMeter.toSquareYard(SquareInch.toSquareMeter(squareInch))
end
function SquareInch.toSquareCentimeter(squareInch: SquareInch): SquareCentimeter
	return SquareMeter.toSquareCentimeter(SquareInch.toSquareMeter(squareInch))
end
function SquareInch.toSquareInch(squareInch: SquareInch): SquareInch
	return SquareMeter.toSquareInch(SquareInch.toSquareMeter(squareInch))
end
function SquareInch.toHectare(squareInch: SquareInch): Hectare
	return SquareMeter.toHectare(SquareInch.toSquareMeter(squareInch))
end
function SquareInch.toAcre(squareInch: SquareInch): Acre
	return SquareMeter.toAcre(SquareInch.toSquareMeter(squareInch))
end
function SquareInch.toRoblox(squareInch: SquareInch): number
	return SquareMeter.toRoblox(SquareInch.toSquareMeter(squareInch))
end

local SquareYard = {}
function SquareYard.toSquareMeter(squareYard: SquareYard): SquareMeter
	return squareYard / SQUARE_CENTIMERS_IN_SQUARE_METER
end
function SquareYard.toSquareMillimeter(squareYard: SquareYard): SquareMillimeter
	return SquareMeter.toSquareMillimeter(SquareYard.toSquareMeter(squareYard))
end
function SquareYard.toSquareKilometer(squareYard: SquareYard): SquareKilometer
	return SquareMeter.toSquareKilometer(SquareYard.toSquareMeter(squareYard))
end
function SquareYard.toSquareMile(squareYard: SquareYard): SquareMile
	return SquareMeter.toSquareMile(SquareYard.toSquareMeter(squareYard))
end
function SquareYard.toSquareCentimeter(squareYard: SquareYard): SquareCentimeter
	return SquareMeter.toSquareCentimeter(SquareYard.toSquareMeter(squareYard))
end
function SquareYard.toSquareFeet(squareYard: SquareYard): SquareFeet
	return SquareMeter.toSquareFeet(SquareYard.toSquareMeter(squareYard))
end
function SquareYard.toSquareInch(squareYard: SquareYard): SquareInch
	return SquareMeter.toSquareInch(SquareYard.toSquareMeter(squareYard))
end
function SquareYard.toHectare(squareYard: SquareYard): Hectare
	return SquareMeter.toHectare(SquareYard.toSquareMeter(squareYard))
end
function SquareYard.toAcre(squareYard: SquareYard): Acre
	return SquareMeter.toAcre(SquareYard.toSquareMeter(squareYard))
end
function SquareYard.toRoblox(squareYard: SquareYard): number
	return SquareMeter.toRoblox(SquareYard.toSquareMeter(squareYard))
end

local SquareKilometer = {}
function SquareKilometer.toSquareMeter(squareKilometer: SquareKilometer): SquareMeter
	return squareKilometer / SQUARE_KILOMETERS_IN_SQUARE_METER
end
function SquareKilometer.toSquareMillimeter(squareKilometer: SquareKilometer): SquareMillimeter
	return SquareMeter.toSquareMillimeter(SquareKilometer.toSquareMeter(squareKilometer))
end
function SquareKilometer.toSquareCentimeter(squareKilometer: SquareKilometer): SquareCentimeter
	return SquareMeter.toSquareCentimeter(SquareKilometer.toSquareMeter(squareKilometer))
end
function SquareKilometer.toSquareMile(squareKilometer: SquareKilometer): SquareMile
	return SquareMeter.toSquareMile(SquareKilometer.toSquareMeter(squareKilometer))
end
function SquareKilometer.toSquareYard(squareKilometer: SquareKilometer): SquareYard
	return SquareMeter.toSquareYard(SquareKilometer.toSquareMeter(squareKilometer))
end
function SquareKilometer.toSquareFeet(squareKilometer: SquareKilometer): SquareFeet
	return SquareMeter.toSquareFeet(SquareKilometer.toSquareMeter(squareKilometer))
end
function SquareKilometer.toSquareInch(squareKilometer: SquareKilometer): SquareInch
	return SquareMeter.toSquareInch(SquareKilometer.toSquareMeter(squareKilometer))
end
function SquareKilometer.toHectare(squareKilometer: SquareKilometer): Hectare
	return SquareMeter.toHectare(SquareKilometer.toSquareMeter(squareKilometer))
end
function SquareKilometer.toAcre(squareKilometer: SquareKilometer): Acre
	return SquareMeter.toAcre(SquareKilometer.toSquareMeter(squareKilometer))
end
function SquareKilometer.toRoblox(squareKilometer: SquareKilometer): number
	return SquareMeter.toRoblox(SquareKilometer.toSquareMeter(squareKilometer))
end

local SquareMile = {}
function SquareMile.toSquareMeter(squareMile: SquareMile): SquareMeter
	return squareMile / SQUARE_CENTIMERS_IN_SQUARE_METER
end
function SquareMile.toSquareMillimeter(squareMile: SquareMile): SquareMillimeter
	return SquareMeter.toSquareMillimeter(SquareMile.toSquareMeter(squareMile))
end
function SquareMile.toSquareKilometer(squareMile: SquareMile): SquareKilometer
	return SquareMeter.toSquareKilometer(SquareMile.toSquareMeter(squareMile))
end
function SquareMile.toSquareCentimeter(squareMile: SquareMile): SquareCentimeter
	return SquareMeter.toSquareCentimeter(SquareMile.toSquareMeter(squareMile))
end
function SquareMile.toSquareYard(squareMile: SquareMile): SquareYard
	return SquareMeter.toSquareYard(SquareMile.toSquareMeter(squareMile))
end
function SquareMile.toSquareFeet(squareMile: SquareMile): SquareFeet
	return SquareMeter.toSquareFeet(SquareMile.toSquareMeter(squareMile))
end
function SquareMile.toSquareInch(squareMile: SquareMile): SquareInch
	return SquareMeter.toSquareInch(SquareMile.toSquareMeter(squareMile))
end
function SquareMile.toHectare(squareMile: SquareMile): Hectare
	return SquareMeter.toHectare(SquareMile.toSquareMeter(squareMile))
end
function SquareMile.toAcre(squareMile: SquareMile): Acre
	return SquareMeter.toAcre(SquareMile.toSquareMeter(squareMile))
end
function SquareMile.toRoblox(squareMile: SquareMile): number
	return SquareMeter.toRoblox(SquareMile.toSquareMeter(squareMile))
end

local Acre = {}
function Acre.toSquareMeter(acre: Acre): SquareMeter
	return acre / ACRES_IN_SQUARE_METER
end
function Acre.toSquareMillimeter(acre: Acre): SquareMillimeter
	return SquareMeter.toSquareMillimeter(Acre.toSquareMeter(acre))
end
function Acre.toSquareKilometer(acre: Acre): SquareKilometer
	return SquareMeter.toSquareKilometer(Acre.toSquareMeter(acre))
end
function Acre.toSquareMile(acre: Acre): SquareMile
	return SquareMeter.toSquareMile(Acre.toSquareMeter(acre))
end
function Acre.toSquareYard(acre: Acre): SquareYard
	return SquareMeter.toSquareYard(Acre.toSquareMeter(acre))
end
function Acre.toSquareFeet(acre: Acre): SquareFeet
	return SquareMeter.toSquareFeet(Acre.toSquareMeter(acre))
end
function Acre.toSquareInch(acre: Acre): SquareInch
	return SquareMeter.toSquareInch(Acre.toSquareMeter(acre))
end
function Acre.toHectare(acre: Acre): Hectare
	return SquareMeter.toHectare(Acre.toSquareMeter(acre))
end
function Acre.toSquareCentimeter(acre: Acre): SquareCentimeter
	return SquareMeter.toAcre(Acre.toSquareMeter(acre))
end
function Acre.toRoblox(acre: Acre): number
	return SquareMeter.toRoblox(Acre.toSquareMeter(acre))
end

local Hectare = {}
function Hectare.toSquareMeter(hectare: Hectare): SquareMeter
	return hectare / HECTARES_IN_SQUARE_METER
end
function Hectare.toSquareMillimeter(hectare: Hectare): SquareMillimeter
	return SquareMeter.toSquareMillimeter(Hectare.toSquareMeter(hectare))
end
function Hectare.toSquareKilometer(hectare: Hectare): SquareKilometer
	return SquareMeter.toSquareKilometer(Hectare.toSquareMeter(hectare))
end
function Hectare.toSquareMile(hectare: Hectare): SquareMile
	return SquareMeter.toSquareMile(Hectare.toSquareMeter(hectare))
end
function Hectare.toSquareYard(hectare: Hectare): SquareYard
	return SquareMeter.toSquareYard(Hectare.toSquareMeter(hectare))
end
function Hectare.toSquareFeet(hectare: Hectare): SquareFeet
	return SquareMeter.toSquareFeet(Hectare.toSquareMeter(hectare))
end
function Hectare.toSquareInch(hectare: Hectare): SquareInch
	return SquareMeter.toSquareInch(Hectare.toSquareMeter(hectare))
end
function Hectare.toSquareCentimeter(hectare: Hectare): SquareCentimeter
	return SquareMeter.toSquareCentimeter(Hectare.toSquareMeter(hectare))
end
function Hectare.toAcre(hectare: Hectare): Acre
	return SquareMeter.toAcre(Hectare.toSquareMeter(hectare))
end
function Hectare.toRoblox(hectare: Hectare): number
	return SquareMeter.toRoblox(Hectare.toSquareMeter(hectare))
end

local Roblox = {}
function Roblox.toSquareMeter(roblox: number): SquareMeter
	return SQUARE_METERS_IN_ROBLOX * roblox
end
function Roblox.toSquareMillimeter(roblox: number): SquareMillimeter
	return SquareMeter.toSquareMillimeter(Roblox.toSquareMeter(roblox))
end
function Roblox.toSquareKilometer(roblox: number): SquareKilometer
	return SquareMeter.toSquareKilometer(Roblox.toSquareMeter(roblox))
end
function Roblox.toSquareMile(roblox: number): SquareMile
	return SquareMeter.toSquareMile(Roblox.toSquareMeter(roblox))
end
function Roblox.toSquareYard(roblox: number): SquareYard
	return SquareMeter.toSquareYard(Roblox.toSquareMeter(roblox))
end
function Roblox.toSquareFeet(roblox: number): SquareFeet
	return SquareMeter.toSquareFeet(Roblox.toSquareMeter(roblox))
end
function Roblox.toSquareInch(roblox: number): SquareInch
	return SquareMeter.toSquareInch(Roblox.toSquareMeter(roblox))
end
function Roblox.toSquareCentimeter(roblox: number): SquareCentimeter
	return SquareMeter.toSquareCentimeter(Roblox.toSquareMeter(roblox))
end
function Roblox.toAcre(roblox: number): Acre
	return SquareMeter.toAcre(Roblox.toSquareMeter(roblox))
end
function Roblox.toHectare(roblox: number): Hectare
	return SquareMeter.toHectare(Roblox.toSquareMeter(roblox))
end

return {
	SquareMeter = SquareMeter,
	SquareCentimeter = SquareCentimeter,
	SquareMillimeter = SquareMillimeter,
	SquareFeet = SquareFeet,
	SquareInch = SquareInch,
	SquareYard = SquareYard,
	SquareKilometer = SquareKilometer,
	SquareMile = SquareMile,
	Acre = Acre,
	Hectare = Hectare,
	Roblox = Roblox,
}