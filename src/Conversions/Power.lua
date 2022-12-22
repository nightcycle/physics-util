--!strict

--- @type Watt Float
--- @within Physics
export type Watt = number

--- @type Kilowatt Float
--- @within Physics
export type Kilowatt = number

--- @type Megawatt Float
--- @within Physics
export type Megawatt = number

--- @type Gigawatt Float
--- @within Physics
export type Gigawatt = number

--- @type Horsepower Float
--- @within Physics
export type Horsepower = number

--- @type FootPoundsPerMinute Float
--- @within Physics
export type FootPoundsPerMinute = number

--- @type KilogramMetersPerSecond Float
--- @within Float
export type KilogramMetersPerSecond = number

-- Constants
local WATTS_IN_KILOWATT = 1000
local MEGAWATTS_IN_KILOWATT = 1/1000
local GIGAWATTS_IN_KILOWATT = MEGAWATTS_IN_KILOWATT / 1000
local HORSEPOWER_IN_KILOWATT = 0.7457
local FOOTPOUNDS_IN_KILOWATT = 1/0.000023
local KILOGRAM_METERS_PER_SECOND_IN_KILOWATT = 0.0098

local Kilowatt = {}
function Kilowatt.toWatt(kilowatt: Kilowatt): Watt
	return kilowatt * WATTS_IN_KILOWATT
end
function Kilowatt.toMegawatt(kilowatt: Kilowatt): Megawatt
	return kilowatt * MEGAWATTS_IN_KILOWATT
end
function Kilowatt.toGigawatt(kilowatt: Kilowatt): Gigawatt
	return kilowatt * GIGAWATTS_IN_KILOWATT
end
function Kilowatt.toHorsepower(kilowatt: Kilowatt): Horsepower
	return kilowatt * HORSEPOWER_IN_KILOWATT
end
function Kilowatt.toFootPoundsPerMinute(kilowatt: Kilowatt): FootPoundsPerMinute
	return kilowatt * FOOTPOUNDS_IN_KILOWATT
end
function Kilowatt.toKilogramMetersPerSecond(kilowatt: Kilowatt): KilogramMetersPerSecond
	return kilowatt * KILOGRAM_METERS_PER_SECOND_IN_KILOWATT
end

local Watt = {}
function Watt.toKilowatt(watt: Watt): Kilowatt
	return watt / WATTS_IN_KILOWATT
end
function Watt.toMegawatt(watt: Watt): Megawatt
	return Kilowatt.toMegawatt(Watt.toKilowatt(watt))
end
function Watt.toGigawatt(watt: Watt): Gigawatt
	return Kilowatt.toGigawatt(Watt.toKilowatt(watt))
end
function Watt.toHorsepower(watt: Watt): Horsepower
	return Kilowatt.toHorsepower(Watt.toKilowatt(watt))
end
function Watt.toFootPoundsPerMinute(watt: Watt): FootPoundsPerMinute
	return Kilowatt.toFootPoundsPerMinute(Watt.toKilowatt(watt))
end
function Watt.toKilogramMetersPerSecond(kilowatt: Kilowatt): KilogramMetersPerSecond
	return Kilowatt.toKilogramMetersPerSecond(Watt.toKilowatt(kilowatt))
end

local Megawatt = {}
function Megawatt.toKilowatt(megawatt: Megawatt): Kilowatt
	return megawatt / MEGAWATTS_IN_KILOWATT
end
function Megawatt.toWatt(megawatt: Megawatt): Watt
	return Kilowatt.toMegawatt(Megawatt.toKilowatt(megawatt))
end
function Megawatt.toGigawatt(megawatt: Megawatt): Gigawatt
	return Kilowatt.toGigawatt(Megawatt.toKilowatt(megawatt))
end
function Megawatt.toHorsepower(megawatt: Megawatt): Horsepower
	return Kilowatt.toHorsepower(Megawatt.toKilowatt(megawatt))
end
function Megawatt.toFootPoundsPerMinute(megawatt: Megawatt): FootPoundsPerMinute
	return Kilowatt.toFootPoundsPerMinute(Megawatt.toKilowatt(megawatt))
end
function Megawatt.toKilogramMetersPerSecond(megawatt: Megawatt): KilogramMetersPerSecond
	return Kilowatt.toKilogramMetersPerSecond(Megawatt.toKilowatt(megawatt))
end

local Gigawatt = {}
function Gigawatt.toKilowatt(gigawatt: Gigawatt): Kilowatt
	return gigawatt / GIGAWATTS_IN_KILOWATT
end
function Gigawatt.toWatt(gigawatt: Gigawatt): Watt
	return Kilowatt.toMegawatt(Gigawatt.toKilowatt(gigawatt))
end
function Gigawatt.toMegawatt(gigawatt: Gigawatt): Megawatt
	return Kilowatt.toMegawatt(Gigawatt.toKilowatt(gigawatt))
end
function Gigawatt.toHorsepower(gigawatt: Gigawatt): Horsepower
	return Kilowatt.toHorsepower(Gigawatt.toKilowatt(gigawatt))
end
function Gigawatt.toFootPoundsPerMinute(gigawatt: Gigawatt): FootPoundsPerMinute
	return Kilowatt.toFootPoundsPerMinute(Gigawatt.toKilowatt(gigawatt))
end
function Gigawatt.toKilogramMetersPerSecond(gigawatt: Gigawatt): KilogramMetersPerSecond
	return Kilowatt.toKilogramMetersPerSecond(Gigawatt.toKilowatt(gigawatt))
end

local Horsepower = {}
function Horsepower.toKilowatt(horsepower: Horsepower): Kilowatt
	return horsepower / GIGAWATTS_IN_KILOWATT
end
function Horsepower.toWatt(horsepower: Horsepower): Watt
	return Kilowatt.toMegawatt(Horsepower.toKilowatt(horsepower))
end
function Horsepower.toMegawatt(horsepower: Horsepower): Megawatt
	return Kilowatt.toMegawatt(Horsepower.toKilowatt(horsepower))
end
function Horsepower.toGigawatt(horsepower: Horsepower): Gigawatt
	return Kilowatt.toGigawatt(Horsepower.toKilowatt(horsepower))
end
function Horsepower.toFootPoundsPerMinute(horsepower: Horsepower): FootPoundsPerMinute
	return Kilowatt.toFootPoundsPerMinute(Horsepower.toKilowatt(horsepower))
end
function Horsepower.toKilogramMetersPerSecond(horsepower: Horsepower): KilogramMetersPerSecond
	return Kilowatt.toKilogramMetersPerSecond(Horsepower.toKilowatt(horsepower))
end

local FootPoundsPerMinute = {}
function FootPoundsPerMinute.toKilowatt(footPoundsPerMinute: FootPoundsPerMinute): Kilowatt
	return footPoundsPerMinute / GIGAWATTS_IN_KILOWATT
end
function FootPoundsPerMinute.toWatt(footPoundsPerMinute: FootPoundsPerMinute): Watt
	return Kilowatt.toMegawatt(FootPoundsPerMinute.toKilowatt(footPoundsPerMinute))
end
function FootPoundsPerMinute.toMegawatt(footPoundsPerMinute: FootPoundsPerMinute): Megawatt
	return Kilowatt.toMegawatt(FootPoundsPerMinute.toKilowatt(footPoundsPerMinute))
end
function FootPoundsPerMinute.toGigawatt(footPoundsPerMinute: FootPoundsPerMinute): Gigawatt
	return Kilowatt.toGigawatt(FootPoundsPerMinute.toKilowatt(footPoundsPerMinute))
end
function FootPoundsPerMinute.toHorsepower(footPoundsPerMinute: FootPoundsPerMinute): Horsepower
	return Kilowatt.toHorsepower(FootPoundsPerMinute.toKilowatt(footPoundsPerMinute))
end
function FootPoundsPerMinute.toKilogramMetersPerSecond(footPoundsPerMinute: FootPoundsPerMinute): KilogramMetersPerSecond
	return Kilowatt.toKilogramMetersPerSecond(FootPoundsPerMinute.toKilowatt(footPoundsPerMinute))
end

return {
	Kilowatt = Kilowatt,
	Watt = Watt,
	Megawatt = Megawatt,
	Gigawatt = Gigawatt,
	Horsepower = Horsepower,
	FootPoundsPerMinute = FootPoundsPerMinute
}