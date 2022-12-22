--!strict

--- @type Pascal Float
--- @within Float
export type Pascal = number

--- @type Kilopascal Float
--- @within Float
export type Kilopascal = number

--- @type Megapascal Float
--- @within Float
export type Megapascal = number

--- @type Atmosphere Float
--- @within Float
export type Atmosphere = number

--- @type Bar Float
--- @within Float
export type Bar = number

--- @type Millibar Float
--- @within Float
export type Millibar = number

--- @type PoundsPerSquareInch Float
--- @within Float
export type PoundsPerSquareInch = number

-- Constant
local ATMOSPHERE_IN_MEGAPASCAL = 9.86923
local KILOPASCAL_IN_MEGAPASCAL = 1000
local PASCAL_IN_MEGAPASCAL = KILOPASCAL_IN_MEGAPASCAL*1000
local BAR_IN_MEGAPASCAL = 10
local MILLIBAR_IN_MEGAPASCAL = BAR_IN_MEGAPASCAL * 1000
local POUNDS_PER_SQUARE_INCH_IN_MEGAPASCAL = 145.038

local Megapascal = {}
function Megapascal.toAtmosphere(megapascal: Megapascal): Atmosphere
	return megapascal * ATMOSPHERE_IN_MEGAPASCAL
end
function Megapascal.toKilopascal(megapascal: Megapascal): Kilopascal
	return megapascal * KILOPASCAL_IN_MEGAPASCAL
end
function Megapascal.toPascal(megapascal: Megapascal): Pascal
	return megapascal * PASCAL_IN_MEGAPASCAL
end
function Megapascal.toBar(megapascal: Megapascal): Bar
	return megapascal * BAR_IN_MEGAPASCAL
end
function Megapascal.toMillibar(megapascal: Megapascal): Millibar
	return megapascal * MILLIBAR_IN_MEGAPASCAL
end
function Megapascal.toPoundsPerSquareInch(megapascal: Megapascal): PoundsPerSquareInch
	return megapascal * POUNDS_PER_SQUARE_INCH_IN_MEGAPASCAL
end

local Kilopascal = {}
function Kilopascal.toMegapascal(kilopascal: Kilopascal): Megapascal
	return kilopascal / KILOPASCAL_IN_MEGAPASCAL
end
function Kilopascal.toAtmosphere(kilopascal: Kilopascal): Atmosphere
	return Megapascal.toAtmosphere(Kilopascal.toMegapascal(kilopascal))
end
function Kilopascal.toPascal(kilopascal: Kilopascal): Pascal
	return Megapascal.toPascal(Kilopascal.toMegapascal(kilopascal))
end
function Kilopascal.toBar(kilopascal: Kilopascal): Bar
	return Megapascal.toBar(Kilopascal.toMegapascal(kilopascal))
end
function Kilopascal.toMillibar(kilopascal: Kilopascal): Millibar
	return Megapascal.toMillibar(Kilopascal.toMegapascal(kilopascal))
end
function Kilopascal.toPoundsPerSquareInch(kilopascal: Kilopascal): PoundsPerSquareInch
	return Megapascal.toPoundsPerSquareInch(Kilopascal.toMegapascal(kilopascal))
end

local Pascal = {}
function Pascal.toMegapascal(pascal: Pascal): Megapascal
	return pascal / PASCAL_IN_MEGAPASCAL
end
function Pascal.toAtmosphere(pascal: Pascal): Atmosphere
	return Megapascal.toAtmosphere(Pascal.toMegapascal(pascal))
end
function Pascal.toPascal(pascal: Pascal): Pascal
	return Megapascal.toPascal(Pascal.toMegapascal(pascal))
end
function Pascal.toBar(pascal: Pascal): Bar
	return Megapascal.toBar(Pascal.toMegapascal(pascal))
end
function Pascal.toMillibar(pascal: Pascal): Millibar
	return Megapascal.toMillibar(Pascal.toMegapascal(pascal))
end
function Pascal.toPoundsPerSquareInch(pascal: Pascal): PoundsPerSquareInch
	return Megapascal.toPoundsPerSquareInch(Pascal.toMegapascal(pascal))
end

local Atmosphere = {}
function Atmosphere.toMegapascal(atmosphere: Atmosphere): Megapascal
	return atmosphere / ATMOSPHERE_IN_MEGAPASCAL
end
function Atmosphere.toKilopascal(atmosphere: Atmosphere): Kilopascal
	return Megapascal.toAtmosphere(Atmosphere.toMegapascal(atmosphere))
end
function Atmosphere.toPascal(atmosphere: Atmosphere): Pascal
	return Megapascal.toPascal(Atmosphere.toMegapascal(atmosphere))
end
function Atmosphere.toBar(atmosphere: Atmosphere): Bar
	return Megapascal.toBar(Atmosphere.toMegapascal(atmosphere))
end
function Atmosphere.toMillibar(atmosphere: Atmosphere): Millibar
	return Megapascal.toMillibar(Atmosphere.toMegapascal(atmosphere))
end
function Atmosphere.toPoundsPerSquareInch(atmosphere: Atmosphere): PoundsPerSquareInch
	return Megapascal.toPoundsPerSquareInch(Atmosphere.toMegapascal(atmosphere))
end

local Bar = {}
function Bar.toMegapascal(bar: Bar): Megapascal
	return bar / BAR_IN_MEGAPASCAL
end
function Bar.toKilopascal(bar: Bar): Kilopascal
	return Megapascal.toAtmosphere(Bar.toMegapascal(bar))
end
function Bar.toPascal(bar: Bar): Pascal
	return Megapascal.toPascal(Bar.toMegapascal(bar))
end
function Bar.toAtmosphere(bar: Bar): Atmosphere
	return Megapascal.toAtmosphere(Bar.toMegapascal(bar))
end
function Bar.toMillibar(bar: Bar): Millibar
	return Megapascal.toMillibar(Bar.toMegapascal(bar))
end
function Bar.toPoundsPerSquareInch(bar: Bar): PoundsPerSquareInch
	return Megapascal.toPoundsPerSquareInch(Bar.toMegapascal(bar))
end

local Millibar = {}
function Millibar.toMegapascal(millibar: Millibar): Megapascal
	return millibar / MILLIBAR_IN_MEGAPASCAL
end
function Millibar.toKilopascal(millibar: Millibar): Kilopascal
	return Megapascal.toAtmosphere(Bar.toMegapascal(millibar))
end
function Millibar.toPascal(millibar: Millibar): Pascal
	return Megapascal.toPascal(Bar.toMegapascal(millibar))
end
function Millibar.toAtmosphere(millibar: Millibar): Atmosphere
	return Megapascal.toAtmosphere(Bar.toMegapascal(millibar))
end
function Millibar.toBar(millibar: Millibar): Millibar
	return Megapascal.toBar(Bar.toMegapascal(millibar))
end
function Millibar.toPoundsPerSquareInch(millibar: Millibar): PoundsPerSquareInch
	return Megapascal.toPoundsPerSquareInch(Bar.toMegapascal(millibar))
end

local PoundsPerSquareInch = {}
function PoundsPerSquareInch.toMegapascal(poundsPerSquareInch: PoundsPerSquareInch): Megapascal
	return poundsPerSquareInch / POUNDS_PER_SQUARE_INCH_IN_MEGAPASCAL
end
function PoundsPerSquareInch.toKilopascal(poundsPerSquareInch: PoundsPerSquareInch): Kilopascal
	return Megapascal.toAtmosphere(PoundsPerSquareInch.toMegapascal(poundsPerSquareInch))
end
function PoundsPerSquareInch.toPascal(poundsPerSquareInch: PoundsPerSquareInch): Pascal
	return Megapascal.toPascal(PoundsPerSquareInch.toMegapascal(poundsPerSquareInch))
end
function PoundsPerSquareInch.toAtmosphere(poundsPerSquareInch: PoundsPerSquareInch): Atmosphere
	return Megapascal.toAtmosphere(PoundsPerSquareInch.toMegapascal(poundsPerSquareInch))
end
function PoundsPerSquareInch.toBar(poundsPerSquareInch: PoundsPerSquareInch): Millibar
	return Megapascal.toBar(PoundsPerSquareInch.toMegapascal(poundsPerSquareInch))
end
function PoundsPerSquareInch.toMillibar(poundsPerSquareInch: PoundsPerSquareInch): Millibar
	return Megapascal.toMillibar(PoundsPerSquareInch.toMegapascal(poundsPerSquareInch))
end

return {
	Megapascal = Megapascal,
	Kilopascal = Kilopascal,
	Pascal = Pascal,
	Atmosphere = Atmosphere,
	Bar = Bar,
	Millibar = Millibar,
	PoundsPerSquareInch = PoundsPerSquareInch,
}