--!strict

--- @type LightYear Float
--- @within Physics
export type LightYear = number

--- @type LightMinute Float
--- @within Physics
export type LightMinute = number

--- @type LightSecond Float
--- @within Physics
export type LightSecond = number

--- @type AstronomicalUnit Float
--- @within Physics
export type AstronomicalUnit = number

--- @type League Float
--- @within Physics
export type League = number

--- @type Mile Float
--- @within Physics
export type Mile = number

--- @type Kilometer Float
--- @within Physics
export type Kilometer = number

--- @type Meter Float
--- @within Physics
export type Meter = number

--- @type Feet Float
--- @within Physics
export type Feet = number

--- @type Centimeter Float
--- @within Physics
export type Centimeter = number

--- @type Millimeter Float
--- @within Physics
export type Millimeter = number

--- @type Micrometer Float
--- @within Physics
export type Micrometer = number

--- @type Nanometer Float
--- @within Physics
export type Nanometer = number

--- @type Picometer Float
--- @within Physics
export type Picometer = number

--- @type Planck Float
--- @within Physics
export type Planck = number

local ASTRONOMICAL_UNITS_IN_LIGHT_YEAR = 63241.1
local KILOMETERS_IN_ASTRONOMICAL_UNIT = 149597870.7
local KILOMETERS_IN_LIGHT_SECOND = 299792.6369041473
local METERS_IN_LEAGUE = 5556
local FEET_IN_METER = 3.28
local KILOMETER_PER_MILE = 1.60934
local METER_IN_KILOMETER = 1000
local CENTIMETERS_IN_METER = 100
local MILLIMETER_IN_METER = 1000
local MICROMETERS_IN_MILLIMETER = 1000
local NANOMETERS_IN_MICROMETER = 1000
local PICOMETERS_IN_NANOMETER = 1000
local PLANCK_LENGTH_IN_PICOMETERS = 1.6*10^-23

local Meter = {}
function Meter.toKilometer(meter: Meter): Kilometer
	return meter / METER_IN_KILOMETER
end
function Meter.toAstronomicalUnit(meter: Meter): AstronomicalUnit
	return Meter.toKilometer(meter) / KILOMETERS_IN_ASTRONOMICAL_UNIT
end
function Meter.toLightYear(meter: Meter): LightYear
	return Meter.toAstronomicalUnit(meter) / ASTRONOMICAL_UNITS_IN_LIGHT_YEAR
end
function Meter.toLightSecond(meter: Meter): LightSecond
	return Meter.toKilometer(meter) / KILOMETERS_IN_LIGHT_SECOND
end
function Meter.toLeague(meter: Meter): League
	return meter / METERS_IN_LEAGUE
end
function Meter.toMile(meter: Meter): Mile
	return Meter.toKilometer(meter) / KILOMETER_PER_MILE
end
function Meter.toFeet(meter: Meter): Feet
	return meter * FEET_IN_METER
end
function Meter.toCentimeter(meter: Meter): Centimeter
	return meter * CENTIMETERS_IN_METER
end
function Meter.toMillimeter(meter: Meter): Millimeter
	return meter * MILLIMETER_IN_METER
end
function Meter.toMicrometer(meter: Meter): Micrometer
	return Meter.toMillimeter(meter) * MICROMETERS_IN_MILLIMETER
end
function Meter.toNanometer(meter: Meter): Nanometer
	return Meter.toNanometer(meter) * NANOMETERS_IN_MICROMETER
end
function Meter.toPicometer(meter: Meter): Picometer
	return Meter.toNanometer(meter) * PICOMETERS_IN_NANOMETER
end
function Meter.toPlanck(meter: Meter): Planck
	return Meter.toPicometer(meter) * PLANCK_LENGTH_IN_PICOMETERS
end

local Kilometer = {}
function Kilometer.toMeter(kilometer: Kilometer): Meter
	return kilometer * METER_IN_KILOMETER
end
function Kilometer.toAstronomicalUnit(kilometer: Kilometer): AstronomicalUnit
	return Meter.toAstronomicalUnit(Kilometer.toMeter(kilometer))
end
function Kilometer.toLightYear(kilometer: Kilometer): LightYear
	return Meter.toLightYear(Kilometer.toMeter(kilometer))
end
function Kilometer.toLightSecond(kilometer: Kilometer): LightSecond
	return Meter.toLightSecond(Kilometer.toMeter(kilometer))
end
function Kilometer.toLeague(kilometer: Kilometer): League
	return Meter.toLeague(Kilometer.toMeter(kilometer))
end
function Kilometer.toMile(kilometer: Kilometer): Mile
	return Meter.toMile(Kilometer.toMeter(kilometer))
end
function Kilometer.toFeet(kilometer: Kilometer): Feet
	return Meter.toFeet(Kilometer.toMeter(kilometer))
end
function Kilometer.toCentimeter(kilometer: Kilometer): Centimeter
	return Meter.toCentimeter(Kilometer.toMeter(kilometer))
end
function Kilometer.toMillimeter(kilometer: Kilometer): Millimeter
	return Meter.toMillimeter(Kilometer.toMeter(kilometer))
end
function Kilometer.toMicrometer(kilometer: Kilometer): Micrometer
	return Meter.toMicrometer(Kilometer.toMeter(kilometer))
end
function Kilometer.toNanometer(kilometer: Kilometer): Nanometer
	return Meter.toNanometer(Kilometer.toMeter(kilometer))
end
function Kilometer.toPicometer(kilometer: Kilometer): Picometer
	return Meter.toPicometer(Kilometer.toMeter(kilometer))
end
function Kilometer.toPlanck(kilometer: Kilometer): Planck
	return Meter.toPlanck(Kilometer.toMeter(kilometer))
end

local AstronomicalUnit = {}
function AstronomicalUnit.toKilometer(astronomicalUnit: AstronomicalUnit): Kilometer
	return astronomicalUnit * KILOMETERS_IN_ASTRONOMICAL_UNIT
end
function AstronomicalUnit.toMeter(astronomicalUnit: AstronomicalUnit): Meter
	return Kilometer.toMeter(AstronomicalUnit.toKilometer(astronomicalUnit))
end
function AstronomicalUnit.toLightYear(astronomicalUnit: AstronomicalUnit): LightYear
	return Kilometer.toLightYear(AstronomicalUnit.toKilometer(astronomicalUnit))
end
function AstronomicalUnit.toLightSecond(astronomicalUnit: AstronomicalUnit): LightSecond
	return Kilometer.toLightSecond(AstronomicalUnit.toKilometer(astronomicalUnit))
end
function AstronomicalUnit.toLeague(astronomicalUnit: AstronomicalUnit): League
	return Kilometer.toLeague(AstronomicalUnit.toKilometer(astronomicalUnit))
end
function AstronomicalUnit.toMile(astronomicalUnit: AstronomicalUnit): Mile
	return Kilometer.toMile(AstronomicalUnit.toKilometer(astronomicalUnit))
end
function AstronomicalUnit.toFeet(astronomicalUnit: AstronomicalUnit): Feet
	return Kilometer.toFeet(AstronomicalUnit.toKilometer(astronomicalUnit))
end
function AstronomicalUnit.toCentimeter(astronomicalUnit: AstronomicalUnit): Centimeter
	return Kilometer.toCentimeter(AstronomicalUnit.toKilometer(astronomicalUnit))
end
function AstronomicalUnit.toMillimeter(astronomicalUnit: AstronomicalUnit): Millimeter
	return Kilometer.toMillimeter(AstronomicalUnit.toKilometer(astronomicalUnit))
end
function AstronomicalUnit.toMicrometer(astronomicalUnit: AstronomicalUnit): Micrometer
	return Kilometer.toMicrometer(AstronomicalUnit.toKilometer(astronomicalUnit))
end
function AstronomicalUnit.toNanometer(astronomicalUnit: AstronomicalUnit): Nanometer
	return Kilometer.toNanometer(AstronomicalUnit.toKilometer(astronomicalUnit))
end
function AstronomicalUnit.toPicometer(astronomicalUnit: AstronomicalUnit): Picometer
	return Kilometer.toPicometer(AstronomicalUnit.toKilometer(astronomicalUnit))
end
function AstronomicalUnit.toPlanck(astronomicalUnit: AstronomicalUnit): Planck
	return Kilometer.toPlanck(AstronomicalUnit.toKilometer(astronomicalUnit))
end

local LightYear = {}
function LightYear.toKilometer(lightYear: LightYear): Kilometer
	return AstronomicalUnit.toKilometer(lightYear * ASTRONOMICAL_UNITS_IN_LIGHT_YEAR)
end
function LightYear.toMeter(lightYear: LightYear): Meter
	return Kilometer.toMeter(LightYear.toKilometer(lightYear))
end
function LightYear.toAstronomicalUnit(lightYear: LightYear): AstronomicalUnit
	return Kilometer.toAstronomicalUnit(LightYear.toKilometer(lightYear))
end
function LightYear.toLightSecond(lightYear: LightYear): LightSecond
	return Kilometer.toLightSecond(LightYear.toKilometer(lightYear))
end
function LightYear.toLeague(lightYear: LightYear): League
	return Kilometer.toLeague(LightYear.toKilometer(lightYear))
end
function LightYear.toMile(lightYear: LightYear): Mile
	return Kilometer.toMile(LightYear.toKilometer(lightYear))
end
function LightYear.toFeet(lightYear: LightYear): Feet
	return Kilometer.toFeet(LightYear.toKilometer(lightYear))
end
function LightYear.toCentimeter(lightYear: LightYear): Centimeter
	return Kilometer.toCentimeter(LightYear.toKilometer(lightYear))
end
function LightYear.toMillimeter(lightYear: LightYear): Millimeter
	return Kilometer.toMillimeter(LightYear.toKilometer(lightYear))
end
function LightYear.toMicrometer(lightYear: LightYear): Micrometer
	return Kilometer.toMicrometer(LightYear.toKilometer(lightYear))
end
function LightYear.toNanometer(lightYear: LightYear): Nanometer
	return Kilometer.toNanometer(LightYear.toKilometer(lightYear))
end
function LightYear.toPicometer(lightYear: LightYear): Picometer
	return Kilometer.toPicometer(LightYear.toKilometer(lightYear))
end
function LightYear.toPlanck(lightYear: LightYear): Planck
	return Kilometer.toPlanck(LightYear.toKilometer(lightYear))
end

local LightSecond = {}
function LightSecond.toKilometer(lightSecond: LightSecond): Kilometer
	return lightSecond * KILOMETERS_IN_LIGHT_SECOND
end
function LightSecond.toMeter(lightSecond: LightSecond): Meter
	return Kilometer.toMeter(LightSecond.toKilometer(lightSecond))
end
function LightSecond.toAstronomicalUnit(lightSecond: LightSecond): AstronomicalUnit
	return Kilometer.toAstronomicalUnit(LightSecond.toKilometer(lightSecond))
end
function LightSecond.toLightYear(lightSecond: LightSecond): LightYear
	return Kilometer.toLightYear(LightSecond.toKilometer(lightSecond))
end
function LightSecond.toLeague(lightSecond: LightSecond): League
	return Kilometer.toLeague(LightSecond.toKilometer(lightSecond))
end
function LightSecond.toMile(lightSecond: LightSecond): Mile
	return Kilometer.toMile(LightSecond.toKilometer(lightSecond))
end
function LightSecond.toFeet(lightSecond: LightSecond): Feet
	return Kilometer.toFeet(LightSecond.toKilometer(lightSecond))
end
function LightSecond.toCentimeter(lightSecond: LightSecond): Centimeter
	return Kilometer.toCentimeter(LightSecond.toKilometer(lightSecond))
end
function LightSecond.toMillimeter(lightSecond: LightSecond): Millimeter
	return Kilometer.toMillimeter(LightSecond.toKilometer(lightSecond))
end
function LightSecond.toMicrometer(lightSecond: LightSecond): Micrometer
	return Kilometer.toMicrometer(LightSecond.toKilometer(lightSecond))
end
function LightSecond.toNanometer(lightSecond: LightSecond): Nanometer
	return Kilometer.toNanometer(LightSecond.toKilometer(lightSecond))
end
function LightSecond.toPicometer(lightSecond: LightSecond): Picometer
	return Kilometer.toPicometer(LightSecond.toKilometer(lightSecond))
end
function LightSecond.toPlanck(lightSecond: LightSecond): Planck
	return Kilometer.toPlanck(LightSecond.toKilometer(lightSecond))
end

local League = {}
function League.toMeter(league: League): Meter
	return league * METERS_IN_LEAGUE
end
function League.toKilometer(league: League): Kilometer
	return Meter.toKilometer(League.toMeter(league))
end
function League.toAstronomicalUnit(league: League): AstronomicalUnit
	return Meter.toAstronomicalUnit(League.toMeter(league))
end
function League.toLightYear(league: League): LightYear
	return Meter.toLightYear(League.toMeter(league))
end
function League.toLightSecond(league: League): LightSecond
	return Meter.toLightSecond(League.toMeter(league))
end
function League.toMile(league: League): Mile
	return Meter.toMile(League.toMeter(league))
end
function League.toFeet(league: League): Feet
	return Meter.toFeet(League.toMeter(league))
end
function League.toCentimeter(league: League): Centimeter
	return Meter.toCentimeter(League.toMeter(league))
end
function League.toMillimeter(league: League): Millimeter
	return Meter.toMillimeter(League.toMeter(league))
end
function League.toMicrometer(league: League): Micrometer
	return Meter.toMicrometer(League.toMeter(league))
end
function League.toNanometer(league: League): Nanometer
	return Meter.toNanometer(League.toMeter(league))
end
function League.toPicometer(league: League): Picometer
	return Meter.toPicometer(League.toMeter(league))
end
function League.toPlanck(league: League): Planck
	return Meter.toPlanck(League.toMeter(league))
end

local Mile = {}
function Mile.toKilometer(mile: Mile): Kilometer
	return mile * KILOMETER_PER_MILE
end
function Mile.toMeter(mile: Mile): Meter
	return Kilometer.toMeter(Mile.toKilometer(mile))
end
function Mile.toAstronomicalUnit(mile: Mile): AstronomicalUnit
	return Kilometer.toAstronomicalUnit(Mile.toKilometer(mile))
end
function Mile.toLightYear(mile: Mile): LightYear
	return Kilometer.toLightYear(Mile.toKilometer(mile))
end
function Mile.toLightSecond(mile: Mile): LightMinute
	return Kilometer.toLightSecond(Mile.toKilometer(mile))
end
function Mile.toLeague(mile: Mile): League
	return Kilometer.toLeague(Mile.toKilometer(mile))
end
function Mile.toFeet(mile: Mile): Feet
	return Kilometer.toFeet(Mile.toKilometer(mile))
end
function Mile.toCentimeter(mile: Mile): Centimeter
	return Kilometer.toCentimeter(Mile.toKilometer(mile))
end
function Mile.toMillimeter(mile: Mile): Millimeter
	return Kilometer.toMillimeter(Mile.toKilometer(mile))
end
function Mile.toMicrometer(mile: Mile): Micrometer
	return Kilometer.toMicrometer(Mile.toKilometer(mile))
end
function Mile.toNanometer(mile: Mile): Nanometer
	return Kilometer.toNanometer(Mile.toKilometer(mile))
end
function Mile.toPicometer(mile: Mile): Picometer
	return Kilometer.toPicometer(Mile.toKilometer(mile))
end
function Mile.toPlanck(mile: Mile): Planck
	return Kilometer.toPlanck(Mile.toKilometer(mile))
end

local Feet = {}
function Feet.toMeter(feet: Feet): Meter
	return feet / FEET_IN_METER
end
function Feet.toKilometer(feet: Feet): Kilometer
	return Meter.toKilometer(Feet.toMeter(feet))
end
function Feet.toAstronomicalUnit(feet: Feet): AstronomicalUnit
	return Meter.toAstronomicalUnit(Feet.toMeter(feet))
end
function Feet.toLightYear(feet: Feet): LightYear
	return Meter.toLightYear(Feet.toMeter(feet))
end
function Feet.toLightSecond(feet: Feet): LightSecond
	return Meter.toLightSecond(Feet.toMeter(feet))
end
function Feet.toLeague(feet: Feet): League
	return Meter.toLeague(Feet.toMeter(feet))
end
function Feet.toMile(feet: Feet): Mile
	return Meter.toMile(Feet.toMeter(feet))
end
function Feet.toCentimeter(feet: Feet): Centimeter
	return Meter.toCentimeter(Feet.toMeter(feet))
end
function Feet.toMillimeter(feet: Feet): Millimeter
	return Meter.toMillimeter(Feet.toMeter(feet))
end
function Feet.toMicrometer(feet: Feet): Micrometer
	return Meter.toMicrometer(Feet.toMeter(feet))
end
function Feet.toNanometer(feet: Feet): Nanometer
	return Meter.toNanometer(Feet.toMeter(feet))
end
function Feet.toPicometer(feet: Feet): Picometer
	return Meter.toPicometer(Feet.toMeter(feet))
end
function Feet.toPlanck(feet: Feet): Planck
	return Meter.toPlanck(Feet.toMeter(feet))
end

local Centimeter = {}
function Centimeter.toMeter(centimeter: Centimeter): Meter
	return centimeter / CENTIMETERS_IN_METER
end
function Centimeter.toKilometer(centimeter: Centimeter): Kilometer
	return Meter.toKilometer(Centimeter.toMeter(centimeter))
end
function Centimeter.toAstronomicalUnit(centimeter: Centimeter): AstronomicalUnit
	return Meter.toAstronomicalUnit(Centimeter.toMeter(centimeter))
end
function Centimeter.toLightYear(centimeter: Centimeter): LightYear
	return Meter.toLightYear(Centimeter.toMeter(centimeter))
end
function Centimeter.toLightSecond(centimeter: Centimeter): LightSecond
	return Meter.toLightSecond(Centimeter.toMeter(centimeter))
end
function Centimeter.toLeague(centimeter: Centimeter): League
	return Meter.toLeague(Centimeter.toMeter(centimeter))
end
function Centimeter.toMile(centimeter: Centimeter): Mile
	return Meter.toMile(Centimeter.toMeter(centimeter))
end
function Centimeter.toFeet(centimeter: Centimeter): Feet
	return Meter.toFeet(Centimeter.toMeter(centimeter))
end
function Centimeter.toMillimeter(centimeter: Centimeter): Millimeter
	return Meter.toMillimeter(Centimeter.toMeter(centimeter))
end
function Centimeter.toMicrometer(centimeter: Centimeter): Micrometer
	return Meter.toMicrometer(Centimeter.toMeter(centimeter))
end
function Centimeter.toNanometer(centimeter: Centimeter): Nanometer
	return Meter.toNanometer(Centimeter.toMeter(centimeter))
end
function Centimeter.toPicometer(centimeter: Centimeter): Picometer
	return Meter.toPicometer(Centimeter.toMeter(centimeter))
end
function Centimeter.toPlanck(centimeter: Centimeter): Planck
	return Meter.toPlanck(Centimeter.toMeter(centimeter))
end

local Millimeter = {}
function Millimeter.toMeter(millimeter: Millimeter): Meter
	return Centimeter.toMeter(millimeter / MILLIMETER_IN_METER)
end
function Millimeter.toKilometer(millimeter: Millimeter): Kilometer
	return Meter.toKilometer(Millimeter.toMeter(millimeter))
end
function Millimeter.toAstronomicalUnit(millimeter: Millimeter): AstronomicalUnit
	return Meter.toAstronomicalUnit(Millimeter.toMeter(millimeter))
end
function Millimeter.toLightYear(millimeter: Millimeter): LightYear
	return Meter.toLightYear(Millimeter.toMeter(millimeter))
end
function Millimeter.toLightSecond(millimeter: Millimeter): LightSecond
	return Meter.toLightSecond(Millimeter.toMeter(millimeter))
end
function Millimeter.toLeague(millimeter: Millimeter): League
	return Meter.toLeague(Millimeter.toMeter(millimeter))
end
function Millimeter.toMile(millimeter: Millimeter): Mile
	return Meter.toMile(Millimeter.toMeter(millimeter))
end
function Millimeter.toFeet(millimeter: Millimeter): Feet
	return Meter.toFeet(Millimeter.toMeter(millimeter))
end
function Millimeter.toCentimeter(millimeter: Millimeter): Centimeter
	return Meter.toCentimeter(Millimeter.toMeter(millimeter))
end
function Millimeter.toMicrometer(millimeter: Millimeter): Micrometer
	return Meter.toMicrometer(Millimeter.toMeter(millimeter))
end
function Millimeter.toNanometer(millimeter: Millimeter): Nanometer
	return Meter.toNanometer(Millimeter.toMeter(millimeter))
end
function Millimeter.toPicometer(millimeter: Millimeter): Picometer
	return Meter.toPicometer(Millimeter.toMeter(millimeter))
end
function Millimeter.toPlanck(millimeter: Millimeter): Planck
	return Meter.toPlanck(Millimeter.toMeter(millimeter))
end

local Micrometer = {}
function Micrometer.toMillimeter(micrometer: Micrometer): Millimeter
	return micrometer / MICROMETERS_IN_MILLIMETER
end
function Micrometer.toMeter(micrometer: Micrometer): Meter
	return Millimeter.toMeter(Micrometer.toMillimeter(micrometer))
end
function Micrometer.toKilometer(micrometer: Micrometer): Kilometer
	return Meter.toKilometer(Micrometer.toMeter(micrometer))
end
function Micrometer.toAstronomicalUnit(micrometer: Micrometer): AstronomicalUnit
	return Meter.toAstronomicalUnit(Micrometer.toMeter(micrometer))
end
function Micrometer.toLightYear(micrometer: Micrometer): LightYear
	return Meter.toLightYear(Micrometer.toMeter(micrometer))
end
function Micrometer.toLightSecond(micrometer: Micrometer): LightSecond
	return Meter.toLightSecond(Micrometer.toMeter(micrometer))
end
function Micrometer.toLeague(micrometer: Micrometer): League
	return Meter.toLeague(Micrometer.toMeter(micrometer))
end
function Micrometer.toMile(micrometer: Micrometer): Mile
	return Meter.toMile(Micrometer.toMeter(micrometer))
end
function Micrometer.toFeet(micrometer: Micrometer): Feet
	return Meter.toFeet(Micrometer.toMeter(micrometer))
end
function Micrometer.toCentimeter(micrometer: Micrometer): Centimeter
	return Meter.toCentimeter(Micrometer.toMeter(micrometer))
end
function Micrometer.toNanometer(micrometer: Micrometer): Nanometer
	return Meter.toNanometer(Micrometer.toMeter(micrometer))
end
function Micrometer.toPicometer(micrometer: Micrometer): Picometer
	return Meter.toPicometer(Micrometer.toMeter(micrometer))
end
function Micrometer.toPlanck(micrometer: Micrometer): Planck
	return Meter.toPlanck(Micrometer.toMeter(micrometer))
end

local Nanometer = {}
function Nanometer.toMicrometer(nanometer: Nanometer): Micrometer
	return nanometer / NANOMETERS_IN_MICROMETER
end
function Nanometer.toMeter(nanometer: Nanometer): Meter
	return Millimeter.toMeter(Nanometer.toMicrometer(nanometer))
end
function Nanometer.toKilometer(nanometer: Nanometer): Kilometer
	return Meter.toKilometer(Nanometer.toMeter(nanometer))
end
function Nanometer.toAstronomicalUnit(nanometer: Nanometer): AstronomicalUnit
	return Meter.toAstronomicalUnit(Nanometer.toMeter(nanometer))
end
function Nanometer.toLightYear(nanometer: Nanometer): LightYear
	return Meter.toLightYear(Nanometer.toMeter(nanometer))
end
function Nanometer.toLightSecond(nanometer: Nanometer): LightSecond
	return Meter.toLightSecond(Nanometer.toMeter(nanometer))
end
function Nanometer.toLeague(nanometer: Nanometer): League
	return Meter.toLeague(Nanometer.toMeter(nanometer))
end
function Nanometer.toMile(nanometer: Nanometer): Mile
	return Meter.toMile(Nanometer.toMeter(nanometer))
end
function Nanometer.toFeet(nanometer: Nanometer): Feet
	return Meter.toFeet(Nanometer.toMeter(nanometer))
end
function Nanometer.toCentimeter(nanometer: Nanometer): Centimeter
	return Meter.toCentimeter(Nanometer.toMeter(nanometer))
end
function Nanometer.toMillimeter(nanometer: Nanometer): Millimeter
	return Meter.toMillimeter(Nanometer.toMeter(nanometer))
end
function Nanometer.toPicometer(nanometer: Nanometer): Picometer
	return Meter.toPicometer(Nanometer.toMeter(nanometer))
end
function Nanometer.toPlanck(nanometer: Nanometer): Planck
	return Meter.toPlanck(Nanometer.toMeter(nanometer))
end

local Picometer = {}
function Picometer.toNanometer(picometer: Picometer): Nanometer
	return picometer / PICOMETERS_IN_NANOMETER
end
function Picometer.toMeter(picometer: Picometer): Meter
	return Millimeter.toMeter(Picometer.toMicrometer(picometer))
end
function Picometer.toKilometer(picometer: Picometer): Kilometer
	return Meter.toKilometer(Picometer.toMeter(picometer))
end
function Picometer.toAstronomicalUnit(picometer: Picometer): AstronomicalUnit
	return Meter.toAstronomicalUnit(Picometer.toMeter(picometer))
end
function Picometer.toLightYear(picometer: Picometer): LightYear
	return Meter.toLightYear(Picometer.toMeter(picometer))
end
function Picometer.toLightSecond(picometer: Picometer): LightSecond
	return Meter.toLightSecond(Picometer.toMeter(picometer))
end
function Picometer.toLeague(picometer: Picometer): League
	return Meter.toLeague(Picometer.toMeter(picometer))
end
function Picometer.toMile(picometer: Picometer): Mile
	return Meter.toMile(Picometer.toMeter(picometer))
end
function Picometer.toFeet(picometer: Picometer): Feet
	return Meter.toFeet(Picometer.toMeter(picometer))
end
function Picometer.toCentimeter(picometer: Picometer): Centimeter
	return Meter.toCentimeter(Picometer.toMeter(picometer))
end
function Picometer.toMillimeter(picometer: Picometer): Millimeter
	return Meter.toMillimeter(Picometer.toMeter(picometer))
end
function Picometer.toMicrometer(picometer: Picometer): Micrometer
	return Meter.toMicrometer(Picometer.toMeter(picometer))
end
function Picometer.toPicometer(picometer: Picometer): Picometer
	return Meter.toPicometer(Picometer.toMeter(picometer))
end
function Picometer.toPlanck(picometer: Picometer): Planck
	return Meter.toPlanck(Picometer.toMeter(picometer))
end

local Planck = {}
function Planck.toPicometer(planck: Planck): Picometer
	return planck / PLANCK_LENGTH_IN_PICOMETERS
end
function Planck.toMeter(planck: Planck): Meter
	return Millimeter.toMeter(Planck.toMicrometer(planck))
end
function Planck.toKilometer(planck: Planck): Kilometer
	return Meter.toKilometer(Planck.toMeter(planck))
end
function Planck.toAstronomicalUnit(planck: Planck): AstronomicalUnit
	return Meter.toAstronomicalUnit(Planck.toMeter(planck))
end
function Planck.toLightYear(planck: Planck): LightYear
	return Meter.toLightYear(Planck.toMeter(planck))
end
function Planck.toLightSecond(planck: Planck): LightSecond
	return Meter.toLightSecond(Planck.toMeter(planck))
end
function Planck.toLeague(planck: Planck): League
	return Meter.toLeague(Planck.toMeter(planck))
end
function Planck.toMile(planck: Planck): Mile
	return Meter.toMile(Planck.toMeter(planck))
end
function Planck.toFeet(planck: Planck): Feet
	return Meter.toFeet(Planck.toMeter(planck))
end
function Planck.toCentimeter(planck: Planck): Centimeter
	return Meter.toCentimeter(Planck.toMeter(planck))
end
function Planck.toMillimeter(planck: Planck): Millimeter
	return Meter.toMillimeter(Planck.toMeter(planck))
end
function Planck.toMicrometer(planck: Planck): Micrometer
	return Meter.toMicrometer(Planck.toMeter(planck))
end
function Planck.toNanometer(planck: Planck): Nanometer
	return Meter.toNanometer(Planck.toMeter(planck))
end

return {
	Meter = Meter,
	Kilometer = Kilometer,
	AstronomicalUnit = AstronomicalUnit,
	LightYear = LightYear,
	LightSecond = LightSecond,
	League = League,
	Mile = Mile,
	Feet = Feet,
	Centimeter = Centimeter,
	Millimeter = Millimeter,
	Micrometer = Micrometer,
	Nanometer = Nanometer,
	Picometer = Picometer,
	Planck = Planck
}