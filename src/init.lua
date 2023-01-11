--!strict
local Conversions = require(script.Conversions)
export type Newton = Conversions.Newton
export type MetersPerSecondSquared = Conversions.MetersPerSecondSquared
export type LightYear = Conversions.LightYear
export type LightMinute = Conversions.LightMinute
export type LightSecond = Conversions.LightSecond
export type AstronomicalUnit = Conversions.AstronomicalUnit
export type League = Conversions.League
export type Mile = Conversions.Mile
export type Kilometer = Conversions.Kilometer
export type Meter = Conversions.Meter
export type Feet = Conversions.Feet
export type Centimeter = Conversions.Centimeter
export type Millimeter = Conversions.Millimeter
export type Micrometer = Conversions.Micrometer
export type Nanometer = Conversions.Nanometer
export type Picometer = Conversions.Picometer
export type Planck = Conversions.Planck
export type Millenia = Conversions.Millenia
export type Century = Conversions.Century
export type Decade = Conversions.Decade
export type Year = Conversions.Year
export type Week = Conversions.Week
export type Day = Conversions.Day
export type Hour = Conversions.Hour
export type Minute = Conversions.Minute
export type Second = Conversions.Second
export type Millisecond = Conversions.Millisecond
export type Microsecond = Conversions.Microsecond
export type Nanosecond = Conversions.Nanosecond
export type Picosecond = Conversions.Picosecond
export type Ounce = Conversions.Ounce
export type Pound = Conversions.Pound
export type Stone = Conversions.Stone
export type Ton = Conversions.Ton
export type Kiloton = Conversions.Kiloton
export type Megaton = Conversions.Megaton
export type Gram = Conversions.Gram
export type Kilogram = Conversions.Kilogram
export type Milligram = Conversions.Milligram
export type Tonne = Conversions.Tonne
export type Kilotonne = Conversions.Kilotonne
export type Megatonne = Conversions.Megatonne
export type MetersPerSecond = Conversions.MetersPerSecond
export type KilometersPerHour = Conversions.KilometersPerHour
export type Knot = Conversions.Knot
export type FeetPerSecond = Conversions.FeetPerSecond
export type MilesPerHour = Conversions.MilesPerHour
export type Fahrenheit = Conversions.Fahrenheit
export type Celsius = Conversions.Celsius
export type Kelvin = Conversions.Kelvin
export type Joule = Conversions.Joule
export type Kilojoule = Conversions.Kilojoule
export type Megajoule = Conversions.Megajoule
export type Calorie = Conversions.Calorie
export type Kilocalorie = Conversions.Kilocalorie
export type BritishThermalUnit = Conversions.BritishThermalUnit
export type Gigajoule = Conversions.Gigajoule
export type Kilowatt = Conversions.Kilowatt
export type Watt = Conversions.Watt
export type Megawatt = Conversions.Megawatt
export type Gigawatt = Conversions.Gigawatt
export type Horsepower = Conversions.Horsepower
export type FootPoundsPerMinute = Conversions.FootPoundsPerMinute
export type Megapascal = Conversions.Megapascal
export type Kilopascal = Conversions.Kilopascal
export type Pascal = Conversions.Pascal
export type Atmosphere = Conversions.Atmosphere
export type Bar = Conversions.Bar
export type Millibar = Conversions.Millibar
export type PoundsPerSquareInch = Conversions.PoundsPerSquareInch
export type KilogramMetersPerSecond = Conversions.KilogramMetersPerSecond
export type Ohm = Conversions.Ohm
export type Volt = Conversions.Volt
export type Amp = Conversions.Amp
export type Liter = Conversions.Liter
export type Milliliter = Conversions.Milliliter
export type Kiloliter = Conversions.Kiloliter
export type Cup = Conversions.Cup
export type Pint = Conversions.Pint
export type Quart = Conversions.Quart
export type Gallon = Conversions.Gallon
export type CubicFeet = Conversions.CubicFeet
export type CubicInch = Conversions.CubicInch
export type CubicMeter = Conversions.CubicMeter
export type GramPerCubicCentimeter = Conversions.GramPerCubicCentimeter
export type KilogramsPerCubicMeter = Conversions.KilogramsPerCubicMeter
export type GramPerMilliliter = Conversions.GramPerMilliliter
export type SquareMeter = Conversions.SquareMeter
export type SquareCentimeter = Conversions.SquareCentimeter
export type SquareMillimeter = Conversions.SquareMillimeter
export type SquareFeet = Conversions.SquareFeet
export type SquareInch = Conversions.SquareInch
export type SquareYard = Conversions.SquareYard
export type SquareKilometer = Conversions.SquareKilometer
export type SquareMile = Conversions.SquareMile
export type Acre = Conversions.Acre
export type Hectare = Conversions.Hectare
export type Mol = number
export type JoulesPerKelvin = number

--- @class Physics
--- A long list of physics related functions.
local Physics = {}
Physics.__index = Physics
Physics.C = 299792458
Physics.R = 8.314
Physics.GravityAcceleration = 9.8
Physics.Avogadro = 6.02214179*10^23
Physics.Conversions = Conversions

function Physics.getVelocityAtTime(
	initialVelocity: MetersPerSecond,
	acceleration: MetersPerSecondSquared,
	timeSinceStart: Second
): MetersPerSecond
	return initialVelocity + acceleration * timeSinceStart
end

function Physics.getInitialVelocity(
	velocity: MetersPerSecond,
	acceleration: MetersPerSecondSquared,
	timeSinceStart: Second
): MetersPerSecond
	return velocity - acceleration * timeSinceStart
end

function Physics.getAcceleration(
	initialVelocity: MetersPerSecond,
	velocity: MetersPerSecond,
	timeSinceStart: Second
): MetersPerSecondSquared
	return (velocity - initialVelocity)/timeSinceStart
end

function Physics.getTimeSinceInitialVelocity(
	initialVelocity: MetersPerSecond,
	velocity: MetersPerSecond,
	acceleration: MetersPerSecondSquared
): Second
	return (velocity - initialVelocity)/acceleration
end

function Physics.getDistanceAtTime(
	initialVelocity: MetersPerSecond,
	velocity: MetersPerSecond,
	timeSinceStart: Second
): Meter
	return timeSinceStart*(initialVelocity + velocity)/2
end

function Physics.getTimeAtDistance(
	initialVelocity: MetersPerSecond,
	velocity: MetersPerSecond,
	distance: Meter
): Second
	return distance/((initialVelocity + velocity)/2)
end

function Physics.getInitialVelocityFromDistance(
	timeSinceStart: Second,
	velocity: MetersPerSecond,
	distance: Meter
): MetersPerSecond
	return (distance * timeSinceStart)*2 - velocity
end

function Physics.getVelocityFromDistance(
	timeSinceStart: Second,
	initialVelocity: MetersPerSecond,
	distance: Meter
): MetersPerSecond
	return (distance * timeSinceStart)*2 - initialVelocity
end

function Physics.getDistanceAtTimeFromInitialVelocityAndAcceleration(
	timeSinceStart: Second,
	initialVelocity: MetersPerSecond,
	acceleration: MetersPerSecondSquared
): Meter
	return initialVelocity*timeSinceStart + 0.5*acceleration*(timeSinceStart^2)
end

function Physics.getInitialVelocityAtTimeFromDistanceAndAcceleration(
	timeSinceStart: Second,
	distance: Meter,
	acceleration: MetersPerSecondSquared
): MetersPerSecond
	return (distance - 0.5*acceleration*(timeSinceStart^2))/timeSinceStart
end

function Physics.getTimeAtDistanceFromInitialVelocityAndAcceleration(
	initialVelocity: MetersPerSecond,
	distance: Meter,
	acceleration: MetersPerSecondSquared
): Second
	return (distance - initialVelocity)*2/acceleration
end

function Physics.getAccelerationAtDistanceFromInitialVelocityAndTime(
	initialVelocity: MetersPerSecond,
	distance: Meter,
	timeSinceStart: Second
): MetersPerSecondSquared
	return (distance - initialVelocity * timeSinceStart)*2/(timeSinceStart^2)
end

function Physics.getVelocityAtDistanceFromInitialVelocityAndAcceleration(
	initialVelocity: MetersPerSecond,
	distance: Meter,
	acceleration: MetersPerSecondSquared
): MetersPerSecond
	return ((initialVelocity^2) + 2*acceleration*distance)^0.5
end

function Physics.getInitialVelocityAtDistanceFromVelocityAndAcceleration(
	velocity: MetersPerSecond,
	distance: Meter,
	acceleration: MetersPerSecondSquared
): MetersPerSecond
	return ((velocity^2) - (2*acceleration*distance))^0.5
end

function Physics.getDistanceAtVelocityFromInitialVelocityAndAcceleration(
	velocity: MetersPerSecond,
	initialVelocity: MetersPerSecond,
	acceleration: MetersPerSecondSquared
): MetersPerSecond
	return ((velocity^2) - (initialVelocity^2))/(2*acceleration)
end

function Physics.getAccelerationAtVelocityFromInitialVelocityAndDistance(
	velocity: MetersPerSecond,
	initialVelocity: MetersPerSecond,
	distance: Meter
): MetersPerSecondSquared
	return ((velocity^2) - (initialVelocity^2))/(2*distance)
end

function Physics.getForce(
	mass: Kilogram,
	acceleration: MetersPerSecondSquared
): Newton
	return mass*acceleration
end

function Physics.getMassFromForce(
	force: Newton,
	acceleration: MetersPerSecondSquared
): Kilogram
	return force/acceleration
end

function Physics.getAccelerationFromForce(
	force: Newton,
	mass: Kilogram
): MetersPerSecondSquared
	return force/mass
end

function Physics.getKineticEnergy(
	mass: Kilogram,
	velocity: MetersPerSecond
): Joule
	return 0.5 * mass * velocity^2
end

function Physics.getMassFromKineticEnergyAndVelocity(
	velocity: MetersPerSecond,
	energy: Joule
): Kilogram
	return 2 * energy / (velocity^2)
end

function Physics.getVelocityFromKineticEnergyAndMass(
	mass: Kilogram,
	energy: Joule
): MetersPerSecond
	return (energy * 2 / mass)^0.5
end

function Physics.getMomentum(
	mass: Kilogram,
	velocity: MetersPerSecond
): KilogramMetersPerSecond
	return mass * velocity
end

function Physics.getVelocityFromMomentumAndMass(
	mass: Kilogram,
	momentum: KilogramMetersPerSecond
): MetersPerSecond
	return momentum/mass
end

function Physics.getMassFromMomentumAndVelocity(
	velocity: MetersPerSecond,
	momentum: KilogramMetersPerSecond
): Kilogram
	return momentum/velocity
end

function Physics.getWork(
	force: Newton,
	distance: Meter
): Joule
	return force * distance
end

function Physics.getForceFromWorkAndDistance(
	work: Joule,
	distance: Meter
): Newton
	return work / distance
end

function Physics.getDistanceFromWorkAndForce(
	work: Joule,
	force: Newton
): Meter
	return work / force
end

function Physics.getPower(
	work: Joule,
	time: Second
): Watt
	return work / time
end


function Physics.getPowerFromForceAndVelocity(
	force: Newton,
	velocity: MetersPerSecond
): Watt
	return force * velocity
end

function Physics.getVelocityFromPowerAndForce(
	force: Newton,
	power: Watt
): MetersPerSecond
	return power / force
end

function Physics.getForceFromPowerAndVelocity(
	velocity: MetersPerSecond,
	power: Watt
): Newton
	return power / velocity
end

function Physics.getWorkFromPowerAndTime(
	power: Watt,
	time: Second
): Joule
	return power * time
end

function Physics.getTimeFromPowerAndWork(
	power: Watt,
	work: Joule
): Second
	return work / power
end

function Physics.getVoltage(
	current: Amp,
	resistance: Ohm
): Volt
	return current * resistance
end

function Physics.getResistance(
	current: Amp,
	voltage: Volt
): Ohm
	return current / voltage
end

function Physics.getCurrent(
	resistance: Ohm,
	voltage: Volt
): Amp
	return resistance / voltage
end

function Physics.getDragEnergy(
	fluidDensity: KilogramsPerCubicMeter,
	velocity: MetersPerSecond,
	area: SquareMeter,
	dragCoefficient: number
): Joule
	return 0.5 * fluidDensity * (velocity^2) * dragCoefficient * area
end

function Physics.getDragCoefficient(
	fluidDensity: KilogramsPerCubicMeter,
	velocity: MetersPerSecond,
	area: SquareMeter,
	drag: Joule
): number
	return drag / (0.5 * fluidDensity * (velocity^2) * area)
end

function Physics.getDragArea(
	fluidDensity: KilogramsPerCubicMeter,
	velocity: MetersPerSecond,
	dragCoefficient: number,
	drag: Joule
): SquareMeter
	return drag / (0.5 * fluidDensity * (velocity^2) * dragCoefficient)
end

function Physics.getDragVelocity(
	fluidDensity: KilogramsPerCubicMeter,
	area: SquareMeter,
	dragCoefficient: number,
	drag: Joule
): MetersPerSecond
	return (drag / (0.5 * fluidDensity * dragCoefficient * area))^0.5
end

function Physics.getDragFluidDensity(
	velocity: MetersPerSecond,
	area: SquareMeter,
	dragCoefficient: number,
	drag: Joule
): KilogramsPerCubicMeter
	return drag / (0.5 * dragCoefficient * (velocity^2) * dragCoefficient)
end

function Physics.getFrictionForce(
	normalForce: Newton,
	coefficient: number
): Newton
	return normalForce * coefficient
end

function Physics.getFrictionCoefficient(
	normalForce: Newton,
	frictionForce: Newton
): Newton
	return normalForce / frictionForce
end

function Physics.getFrictionNormalForce(
	frictionForce: Newton,
	coefficient: number
): Newton
	return frictionForce / coefficient
end

function Physics.getPressureFromAreaAndForce(
	force: Newton,
	area: SquareMeter
): Pascal
	return force / area
end

function Physics.getPressureFromVolumeAndTemperatureAndAtoms(
	volume: CubicMeter,
	atoms: Mol,
	temperature: Kelvin
): Atmosphere
	return (atoms*Physics.R*temperature)/volume
end

function Physics.getTemperatureFromVolumeAndPressureAndAtoms(
	volume: CubicMeter,
	atoms: Mol,
	pressure: Atmosphere
): Kelvin
	return (pressure*volume)/(atoms*Physics.R)
end

function Physics.getVolumeFromTemperatureAndPressureAndAtoms(
	atoms: Mol,
	pressure: Atmosphere,
	temperature: Kelvin
): CubicMeter
	return (atoms*Physics.R*temperature)/pressure
end

function Physics.getAtomCountFromTemperatureAndPressureAndVolume(
	volume: CubicMeter,
	pressure: Atmosphere,
	temperature: Kelvin
): CubicMeter
	return (pressure * volume)/(Physics.R * temperature)
end

function Physics.getHeatEnergy(
	mass: Kilogram,
	c: JoulesPerKelvin,
	deltaTemperature: Kelvin
): Joule
	return mass * c * deltaTemperature
end

function Physics.getHeatCapacity(
	mass: Kilogram,
	heatEnergy: Joule,
	deltaTemperature: Kelvin
): JoulesPerKelvin
	return heatEnergy / (mass*deltaTemperature)
end

function Physics.getDeltaTemperature(
	mass: Kilogram,
	heatEnergy: Joule,
	heatCapacity: number
): Kelvin
	return heatEnergy / (mass * heatCapacity)
end

function Physics.getMassFromDeltaTemperatureAndHeatEnergyAndHeatCapacity(
	deltaTemperature: Kelvin,
	heatEnergy: Joule,
	heatCapacity: number
): Kilogram
	return heatEnergy / (deltaTemperature * heatCapacity)
end

function Physics.getTorque(radius: Meter, tangentialForce: Newton): Newton
	return radius * tangentialForce
end

function Physics.getTangentialForce(torque: Newton, radius: Meter): Newton
	return torque / radius
end

function Physics.getRadiusFromForce(torque: Newton, tangentialForce: Newton): Meter
	return torque / tangentialForce
end

function Physics.getAngularMomentum(radius: Meter, tangentialMomentum: Joule): Joule
	return radius * tangentialMomentum
end

function Physics.getTangentialMomentum(radius: Meter, angularMomentum: Joule): Joule
	return angularMomentum / radius
end

function Physics.getRadiusFromMomentum(radius: Meter, angularMomentum: Joule): Meter
	return angularMomentum / radius
end

return Physics