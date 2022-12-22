--!strict

--- @type Fahrenheit Float
--- @within Physics
export type Fahrenheit = number

--- @type Celsius Float
--- @within Physics
export type Celsius = number

--- @type Kelvin Float
--- @within Physics
export type Kelvin = number

-- Constants
local KELVIN_OFFSET = 273
local FAHRENHEIT_OFFSET = 32
local FAHRENHEIT_RATIO = 9/5

local Celsius = {}
function Celsius.toKelvin(celsius: Celsius): Kelvin
	return celsius + KELVIN_OFFSET
end
function Celsius.toFahrenheit(celsius: Celsius): Fahrenheit
	return celsius*FAHRENHEIT_RATIO + FAHRENHEIT_OFFSET
end

local Kelvin = {}
function Kelvin.toCelsius(kelvin: Kelvin): Celsius
	return kelvin - KELVIN_OFFSET
end
function Kelvin.toFahrenheit(kelvin: Kelvin): Fahrenheit
	return Celsius.toFahrenheit(Kelvin.toCelsius(kelvin))
end

local Fahrenheit = {}
function Fahrenheit.toCelsius(fahrenheit: Fahrenheit): Celsius
	return (fahrenheit - FAHRENHEIT_OFFSET) / FAHRENHEIT_RATIO
end
function Fahrenheit.toKelvin(fahrenheit: Fahrenheit): Kelvin
	return Celsius.toKelvin(Fahrenheit.toCelsius(fahrenheit))
end

return {
	Kelvin = Kelvin,
	Celsius = Celsius,
	Fahrenheit = Fahrenheit,
}