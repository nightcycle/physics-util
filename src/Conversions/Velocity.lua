--!strict

--- @type MetersPerSecond Float
--- @within Physics
export type MetersPerSecond = number

--- @type KilometersPerHour Float
--- @within Physics
export type KilometersPerHour = number

--- @type Knot Float
--- @within Physics
export type Knot = number

--- @type FeetPerSecond Float
--- @within Physics
export type FeetPerSecond = number

--- @type MilesPerHour Float
--- @within Physics
export type MilesPerHour = number

-- Constants
local KPH_IN_MPS = 3.6
local MPH_IN_MPS = 2.23694
local FPS_IN_MPS = 3.28084
local KNOTS_IN_MPS = 1.94384

local MetersPerSecond = {}

function MetersPerSecond.toKilometersPerHour(metersPerSecond: MetersPerSecond): KilometersPerHour
	return metersPerSecond * KPH_IN_MPS
end
function MetersPerSecond.toMilesPerHour(metersPerSecond: MetersPerSecond): MilesPerHour
	return metersPerSecond * MPH_IN_MPS
end
function MetersPerSecond.toFeetPerSecond(metersPerSecond: MetersPerSecond): FeetPerSecond
	return metersPerSecond * FPS_IN_MPS
end
function MetersPerSecond.toKnot(metersPerSecond: MetersPerSecond): Knot
	return metersPerSecond * KNOTS_IN_MPS
end

local KilometersPerHour = {}
function KilometersPerHour.toMetersPerSecond(kilometersPerHour: KilometersPerHour): MetersPerSecond
	return kilometersPerHour / KPH_IN_MPS
end
function KilometersPerHour.toMilesPerHour(kilometersPerHour: KilometersPerHour): MilesPerHour
	return MetersPerSecond.toMilesPerHour(KilometersPerHour.toMetersPerSecond(kilometersPerHour))
end
function KilometersPerHour.toFeetPerSecond(kilometersPerHour: KilometersPerHour): FeetPerSecond
	return MetersPerSecond.toFeetPerSecond(KilometersPerHour.toMetersPerSecond(kilometersPerHour))
end
function KilometersPerHour.toKnot(kilometersPerHour: KilometersPerHour): Knot
	return MetersPerSecond.toKnot(KilometersPerHour.toMetersPerSecond(kilometersPerHour))
end

local MilesPerHour = {}
function MilesPerHour.toMetersPerSecond(milesPerHour: MilesPerHour): MetersPerSecond
	return milesPerHour / MPH_IN_MPS
end
function MilesPerHour.toKilometersPerHour(milesPerHour: MilesPerHour): KilometersPerHour
	return MetersPerSecond.toKilometersPerHour(MilesPerHour.toMetersPerSecond(milesPerHour))
end
function MilesPerHour.toFeetPerSecond(milesPerHour: MilesPerHour): FeetPerSecond
	return MetersPerSecond.toFeetPerSecond(MilesPerHour.toMetersPerSecond(milesPerHour))
end
function MilesPerHour.toKnot(milesPerHour: MilesPerHour): Knot
	return MetersPerSecond.toKnot(MilesPerHour.toMetersPerSecond(milesPerHour))
end

local FeetPerSecond = {}
function FeetPerSecond.toMetersPerSecond(feetPerSecond: FeetPerSecond): MetersPerSecond
	return feetPerSecond / FPS_IN_MPS
end
function FeetPerSecond.toKilometersPerHour(feetPerSecond: FeetPerSecond): KilometersPerHour
	return MetersPerSecond.toKilometersPerHour(FeetPerSecond.toMetersPerSecond(feetPerSecond))
end
function FeetPerSecond.toMilesPerHour(feetPerSecond: FeetPerSecond): MilesPerHour
	return MetersPerSecond.toMilesPerHour(FeetPerSecond.toMetersPerSecond(feetPerSecond))
end
function FeetPerSecond.toKnot(feetPerSecond: FeetPerSecond): Knot
	return MetersPerSecond.toKnot(FeetPerSecond.toMetersPerSecond(feetPerSecond))
end

local Knot = {}
function Knot.toMetersPerSecond(knot: Knot): MetersPerSecond
	return knot / KNOTS_IN_MPS
end
function Knot.toKilometersPerHour(knot: Knot): KilometersPerHour
	return MetersPerSecond.toKilometersPerHour(FeetPerSecond.toMetersPerSecond(knot))
end
function Knot.toMilesPerHour(knot: Knot): MilesPerHour
	return MetersPerSecond.toMilesPerHour(FeetPerSecond.toMetersPerSecond(knot))
end
function Knot.toFeetPerSecond(knot: Knot): FeetPerSecond
	return MetersPerSecond.toFeetPerSecond(FeetPerSecond.toMetersPerSecond(knot))
end

return {
	MetersPerSecond = MetersPerSecond,
	KilometersPerHour = KilometersPerHour,
	MilesPerHour = MilesPerHour,
	FeetPerSecond = FeetPerSecond,
	Knot = Knot,
}


