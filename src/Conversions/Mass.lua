--!strict

--- @type Ounce Float
--- @within Physics
export type Ounce = number

--- @type Pound Float
--- @within Physics
export type Pound = number

--- @type Ton Float
--- @within Physics
export type Stone = number

--- @type Ton Float
--- @within Physics
export type Ton = number

--- @type Kiloton Float
--- @within Physics
export type Kiloton = number

--- @type Megaton Float
--- @within Physics
export type Megaton = number

--- @type Gram Float
--- @within Physics
export type Gram = number

--- @type Kilogram Float
--- @within Physics
export type Kilogram = number

--- @type Milligram Float
--- @within Physics
export type Milligram = number

--- @type Tonne Float
--- @within Physics
export type Tonne = number

--- @type Kilotonne Float
--- @within Physics
export type Kilotonne = number

--- @type Megatonne Float
--- @within Physics
export type Megatonne = number

-- Constants
local POUNDS_IN_KILOGRAM = 2.20462
local OUNCES_IN_KILOGRAM = 16 * POUNDS_IN_KILOGRAM
local STONES_IN_KILOGRAM = POUNDS_IN_KILOGRAM * 14
local TONS_IN_KILOGRAM = POUNDS_IN_KILOGRAM / 2000
local KILOTONS_IN_KILOGRAM = TONS_IN_KILOGRAM / 1000
local MEGATONS_IN_KILOGRAM = KILOTONS_IN_KILOGRAM / 1000
local GRAMS_IN_KILOGRAM = 1000
local MILLIGRAMS_IN_KILOGRAM = GRAMS_IN_KILOGRAM*1000
local TONNES_IN_KILOGRAM = 1/1000
local KILOTONNES_IN_KILOGRAM = TONNES_IN_KILOGRAM/1000
local MEGATONNES_IN_KILOGRAM = KILOTONNES_IN_KILOGRAM/1000

local Kilogram = {}
function Kilogram.toPound(kilogram: Kilogram): Pound
	return kilogram * POUNDS_IN_KILOGRAM
end
function Kilogram.toOunce(kilogram: Kilogram): Ounce
	return kilogram * OUNCES_IN_KILOGRAM
end
function Kilogram.toStone(kilogram: Kilogram): Stone
	return kilogram * STONES_IN_KILOGRAM
end
function Kilogram.toTon(kilogram: Kilogram): Ton
	return kilogram * TONS_IN_KILOGRAM
end
function Kilogram.toKiloton(kilogram: Kilogram): Kiloton
	return kilogram * KILOTONS_IN_KILOGRAM
end
function Kilogram.toMegaton(kilogram: Kilogram): Megaton
	return kilogram * MEGATONS_IN_KILOGRAM
end
function Kilogram.toGram(kilogram: Kilogram): Gram
	return kilogram * GRAMS_IN_KILOGRAM
end
function Kilogram.toMilligram(kilogram: Kilogram): Milligram
	return kilogram * MILLIGRAMS_IN_KILOGRAM
end
function Kilogram.toTonne(kilogram: Kilogram): Tonne
	return kilogram * TONNES_IN_KILOGRAM
end
function Kilogram.toKilotonne(kilogram: Kilogram): Kilotonne
	return kilogram * KILOTONNES_IN_KILOGRAM
end
function Kilogram.toMegatonne(kilogram: Kilogram): Megatonne
	return kilogram * MEGATONNES_IN_KILOGRAM
end

local Ounce = {}
function Ounce.toKilogram(ounce: Ounce): Kilogram
	return ounce / OUNCES_IN_KILOGRAM
end
function Ounce.toPound(ounce: Ounce): Pound
	return Kilogram.toPound(Ounce.toKilogram(ounce))
end
function Ounce.toStone(ounce: Ounce): Stone
	return Kilogram.toStone(Ounce.toKilogram(ounce))
end
function Ounce.toTon(ounce: Ounce): Ton
	return Kilogram.toTon(Ounce.toKilogram(ounce))
end
function Ounce.toKiloton(ounce: Ounce): Kiloton
	return Kilogram.toKiloton(Ounce.toKilogram(ounce))
end
function Ounce.toMegaton(ounce: Ounce): Megaton
	return Kilogram.toMegaton(Ounce.toKilogram(ounce))
end
function Ounce.toGram(ounce: Ounce): Gram
	return Kilogram.toGram(Ounce.toKilogram(ounce))
end
function Ounce.toMilligram(ounce: Ounce): Milligram
	return Kilogram.toMilligram(Ounce.toKilogram(ounce))
end
function Ounce.toTonne(ounce: Ounce): Tonne
	return Kilogram.toTonne(Ounce.toKilogram(ounce))
end
function Ounce.toKilotonne(ounce: Ounce): Kilotonne
	return Kilogram.toKilotonne(Ounce.toKilogram(ounce))
end
function Ounce.toMegatonne(ounce: Ounce): Megatonne
	return Kilogram.toMegatonne(Ounce.toKilogram(ounce))
end

local Pound = {}
function Pound.toKilogram(pound: Pound): Kilogram
	return pound / POUNDS_IN_KILOGRAM
end
function Pound.toTon(pound: Pound): Ton
	return Kilogram.toTon(Pound.toKilogram(pound))
end
function Pound.toOunce(pound: Pound): Ounce
	return Kilogram.toOunce(Pound.toKilogram(pound))
end
function Pound.toStone(pound: Pound): Stone
	return Kilogram.toStone(Pound.toKilogram(pound))
end
function Pound.toKiloton(pound: Pound): Kiloton
	return Kilogram.toKiloton(Pound.toKilogram(pound))
end
function Pound.toMegaton(pound: Pound): Megaton
	return Kilogram.toMegaton(Pound.toKilogram(pound))
end
function Pound.toGram(pound: Pound): Gram
	return Kilogram.toGram(Pound.toKilogram(pound))
end
function Pound.toMilligram(pound: Pound): Milligram
	return Kilogram.toMilligram(Pound.toKilogram(pound))
end
function Pound.toTonne(pound: Pound): Tonne
	return Kilogram.toTonne(Pound.toKilogram(pound))
end
function Pound.toKilotonne(pound: Pound): Kilotonne
	return Kilogram.toKilotonne(Pound.toKilogram(pound))
end
function Pound.toMegatonne(pound: Pound): Megatonne
	return Kilogram.toMegatonne(Pound.toKilogram(pound))
end

local Stone = {}
function Stone.toKilogram(stone: Stone): Kilogram
	return stone / POUNDS_IN_KILOGRAM
end
function Stone.toTon(stone: Stone): Ton
	return Kilogram.toTon(Stone.toKilogram(stone))
end
function Stone.toOunce(stone: Stone): Ounce
	return Kilogram.toOunce(Stone.toKilogram(stone))
end
function Stone.toPound(stone: Stone): Pound
	return Kilogram.toPound(Stone.toKilogram(stone))
end
function Stone.toKiloton(stone: Stone): Kiloton
	return Kilogram.toKiloton(Stone.toKilogram(stone))
end
function Stone.toMegaton(stone: Stone): Megaton
	return Kilogram.toMegaton(Stone.toKilogram(stone))
end
function Stone.toGram(stone: Stone): Gram
	return Kilogram.toGram(Stone.toKilogram(stone))
end
function Stone.toMilligram(stone: Stone): Milligram
	return Kilogram.toMilligram(Stone.toKilogram(stone))
end
function Stone.toTonne(stone: Stone): Tonne
	return Kilogram.toTonne(Stone.toKilogram(stone))
end
function Stone.toKilotonne(stone: Stone): Kilotonne
	return Kilogram.toKilotonne(Stone.toKilogram(stone))
end
function Stone.toMegatonne(stone: Stone): Megatonne
	return Kilogram.toMegatonne(Stone.toKilogram(stone))
end

local Ton = {}
function Ton.toKilogram(ton: Ton): Kilogram
	return ton / TONS_IN_KILOGRAM
end
function Ton.toOunce(ton: Ton): Ounce
	return Kilogram.toOunce(Ton.toKilogram(ton))
end
function Ton.toPound(ton: Ton): Pound
	return Kilogram.toPound(Ton.toKilogram(ton))
end
function Ton.toStone(ton: Ton): Stone
	return Kilogram.toStone(Ton.toKilogram(ton))
end
function Ton.toKiloton(ton: Ton): Kiloton
	return Kilogram.toKiloton(Ton.toKilogram(ton))
end
function Ton.toMegaton(ton: Ton): Megaton
	return Kilogram.toMegaton(Ton.toKilogram(ton))
end
function Ton.toGram(ton: Ton): Gram
	return Kilogram.toGram(Ton.toKilogram(ton))
end
function Ton.toMilligram(ton: Ton): Milligram
	return Kilogram.toMilligram(Ton.toKilogram(ton))
end
function Ton.toTonne(ton: Ton): Tonne
	return Kilogram.toTonne(Ton.toKilogram(ton))
end
function Ton.toKilotonne(ton: Ton): Kilotonne
	return Kilogram.toKilotonne(Ton.toKilogram(ton))
end
function Ton.toMegatonne(ton: Ton): Megatonne
	return Kilogram.toMegatonne(Ton.toKilogram(ton))
end

local Kiloton = {}
function Kiloton.toKilogram(kiloton: Kiloton): Kilogram
	return kiloton / OUNCES_IN_KILOGRAM
end
function Kiloton.toOunce(kiloton: Kiloton): Ounce
	return Kilogram.toKiloton(Kiloton.toKilogram(kiloton))
end
function Kiloton.toPound(kiloton: Kiloton): Pound
	return Kilogram.toPound(Kiloton.toKilogram(kiloton))
end
function Kiloton.toStone(kiloton: Kiloton): Stone
	return Kilogram.toStone(Kiloton.toKilogram(kiloton))
end
function Kiloton.toTon(kiloton: Kiloton): Ton
	return Kilogram.toTon(Kiloton.toKilogram(kiloton))
end
function Kiloton.toMegaton(kiloton: Kiloton): Megaton
	return Kilogram.toMegaton(Kiloton.toKilogram(kiloton))
end
function Kiloton.toGram(kiloton: Kiloton): Gram
	return Kilogram.toGram(Kiloton.toKilogram(kiloton))
end
function Kiloton.toMilligram(kiloton: Kiloton): Milligram
	return Kilogram.toMilligram(Kiloton.toKilogram(kiloton))
end
function Kiloton.toTonne(kiloton: Kiloton): Tonne
	return Kilogram.toTonne(Kiloton.toKilogram(kiloton))
end
function Kiloton.toKilotonne(kiloton: Kiloton): Kilotonne
	return Kilogram.toKilotonne(Kiloton.toKilogram(kiloton))
end
function Kiloton.toMegatonne(kiloton: Kiloton): Megatonne
	return Kilogram.toMegatonne(Kiloton.toKilogram(kiloton))
end

local Megaton = {}
function Megaton.toKilogram(megaton: Megaton): Kilogram
	return megaton / MEGATONS_IN_KILOGRAM
end
function Megaton.toOunce(megaton: Megaton): Ounce
	return Kilogram.toOunce(Megaton.toKilogram(megaton))
end
function Megaton.toPound(megaton: Megaton): Pound
	return Kilogram.toPound(Megaton.toKilogram(megaton))
end
function Megaton.toStone(megaton: Megaton): Stone
	return Kilogram.toStone(Megaton.toKilogram(megaton))
end
function Megaton.toTon(megaton: Megaton): Ton
	return Kilogram.toTon(Megaton.toKilogram(megaton))
end
function Megaton.toKiloton(megaton: Megaton): Kiloton
	return Kilogram.toKiloton(Megaton.toKilogram(megaton))
end
function Megaton.toGram(megaton: Megaton): Gram
	return Kilogram.toGram(Megaton.toKilogram(megaton))
end
function Megaton.toMilligram(megaton: Megaton): Milligram
	return Kilogram.toMilligram(Megaton.toKilogram(megaton))
end
function Megaton.toTonne(megaton: Megaton): Tonne
	return Kilogram.toTonne(Megaton.toKilogram(megaton))
end
function Megaton.toKilotonne(megaton: Megaton): Kilotonne
	return Kilogram.toKilotonne(Megaton.toKilogram(megaton))
end
function Megaton.toMegatonne(megaton: Megaton): Megatonne
	return Kilogram.toMegatonne(Megaton.toKilogram(megaton))
end

local Gram = {}
function Gram.toKilogram(gram: Gram): Kilogram
	return gram / GRAMS_IN_KILOGRAM
end
function Gram.toOunce(gram: Gram): Ounce
	return Kilogram.toOunce(Gram.toKilogram(gram))
end
function Gram.toPound(gram: Gram): Pound
	return Kilogram.toPound(Gram.toKilogram(gram))
end
function Gram.toStone(gram: Gram): Stone
	return Kilogram.toStone(Gram.toKilogram(gram))
end
function Gram.toTon(gram: Gram): Ton
	return Kilogram.toTon(Gram.toKilogram(gram))
end
function Gram.toKiloton(gram: Gram): Kiloton
	return Kilogram.toKiloton(Gram.toKilogram(gram))
end
function Gram.toMegaton(gram: Gram): Megaton
	return Kilogram.toMegaton(Gram.toKilogram(gram))
end
function Gram.toMilligram(gram: Gram): Milligram
	return Kilogram.toMilligram(Gram.toKilogram(gram))
end
function Gram.toTonne(gram: Gram): Tonne
	return Kilogram.toTonne(Gram.toKilogram(gram))
end
function Gram.toKilotonne(gram: Gram): Kilotonne
	return Kilogram.toKilotonne(Gram.toKilogram(gram))
end
function Gram.toMegatonne(gram: Gram): Megatonne
	return Kilogram.toMegatonne(Gram.toKilogram(gram))
end

local Milligram = {}
function Milligram.toKilogram(milligram: Milligram): Kilogram
	return milligram / MILLIGRAMS_IN_KILOGRAM
end
function Milligram.toOunce(milligram: Milligram): Ounce
	return Kilogram.toOunce(Milligram.toKilogram(milligram))
end
function Milligram.toPound(milligram: Milligram): Pound
	return Kilogram.toPound(Milligram.toKilogram(milligram))
end
function Milligram.toStone(milligram: Milligram): Stone
	return Kilogram.toStone(Milligram.toKilogram(milligram))
end
function Milligram.toTon(milligram: Milligram): Ton
	return Kilogram.toTon(Milligram.toKilogram(milligram))
end
function Milligram.toKiloton(milligram: Milligram): Kiloton
	return Kilogram.toKiloton(Milligram.toKilogram(milligram))
end
function Milligram.toMegaton(milligram: Milligram): Megaton
	return Kilogram.toMegaton(Milligram.toKilogram(milligram))
end
function Milligram.toGram(milligram: Milligram): Gram
	return Kilogram.toGram(Milligram.toKilogram(milligram))
end
function Milligram.toTonne(milligram: Milligram): Tonne
	return Kilogram.toTonne(Milligram.toKilogram(milligram))
end
function Milligram.toKilotonne(milligram: Milligram): Kilotonne
	return Kilogram.toKilotonne(Milligram.toKilogram(milligram))
end
function Milligram.toMegatonne(milligram: Milligram): Megatonne
	return Kilogram.toMegatonne(Milligram.toKilogram(milligram))
end

local Tonne = {}
function Tonne.toKilogram(ounce: Tonne): Kilogram
	return ounce / TONNES_IN_KILOGRAM
end
function Tonne.toOunce(ounce: Tonne): Ounce
	return Kilogram.toOunce(Tonne.toKilogram(ounce))
end
function Tonne.toPound(ounce: Tonne): Pound
	return Kilogram.toPound(Tonne.toKilogram(ounce))
end
function Tonne.toStone(ounce: Tonne): Stone
	return Kilogram.toStone(Tonne.toKilogram(ounce))
end
function Tonne.toTon(ounce: Tonne): Ton
	return Kilogram.toTon(Tonne.toKilogram(ounce))
end
function Tonne.toKiloton(ounce: Tonne): Kiloton
	return Kilogram.toKiloton(Tonne.toKilogram(ounce))
end
function Tonne.toMegaton(ounce: Tonne): Megaton
	return Kilogram.toMegaton(Tonne.toKilogram(ounce))
end
function Tonne.toGram(ounce: Tonne): Gram
	return Kilogram.toGram(Tonne.toKilogram(ounce))
end
function Tonne.toMilligram(ounce: Tonne): Milligram
	return Kilogram.toMilligram(Tonne.toKilogram(ounce))
end
function Tonne.toKilotonne(ounce: Tonne): Kilotonne
	return Kilogram.toKilotonne(Tonne.toKilogram(ounce))
end
function Tonne.toMegatonne(ounce: Tonne): Megatonne
	return Kilogram.toMegatonne(Tonne.toKilogram(ounce))
end

local Kilotonne = {}
function Kilotonne.toKilogram(kilotonne: Kilotonne): Kilogram
	return kilotonne / KILOTONNES_IN_KILOGRAM
end
function Kilotonne.toOunce(kilotonne: Kilotonne): Ounce
	return Kilogram.toOunce(Kilotonne.toKilogram(kilotonne))
end
function Kilotonne.toPound(kilotonne: Kilotonne): Pound
	return Kilogram.toPound(Kilotonne.toKilogram(kilotonne))
end
function Kilotonne.toStone(kilotonne: Kilotonne): Stone
	return Kilogram.toStone(Kilotonne.toKilogram(kilotonne))
end
function Kilotonne.toTon(kilotonne: Kilotonne): Ton
	return Kilogram.toTon(Kilotonne.toKilogram(kilotonne))
end
function Kilotonne.toKiloton(kilotonne: Kilotonne): Kiloton
	return Kilogram.toKiloton(Kilotonne.toKilogram(kilotonne))
end
function Kilotonne.toMegaton(kilotonne: Kilotonne): Megaton
	return Kilogram.toMegaton(Kilotonne.toKilogram(kilotonne))
end
function Kilotonne.toGram(kilotonne: Kilotonne): Gram
	return Kilogram.toGram(Kilotonne.toKilogram(kilotonne))
end
function Kilotonne.toMilligram(kilotonne: Kilotonne): Milligram
	return Kilogram.toMilligram(Kilotonne.toKilogram(kilotonne))
end
function Kilotonne.toTonne(kilotonne: Kilotonne): Tonne
	return Kilogram.toTonne(Kilotonne.toKilogram(kilotonne))
end
function Kilotonne.toMegatonne(kilotonne: Kilotonne): Megatonne
	return Kilogram.toMegatonne(Kilotonne.toKilogram(kilotonne))
end

local Megatonne = {}
function Megatonne.toKilogram(megatonne: Megatonne): Kilogram
	return megatonne / MEGATONNES_IN_KILOGRAM
end
function Megatonne.toOunce(megatonne: Megatonne): Ounce
	return Kilogram.toOunce(Megatonne.toKilogram(megatonne))
end
function Megatonne.toPound(megatonne: Megatonne): Pound
	return Kilogram.toPound(Megatonne.toKilogram(megatonne))
end
function Megatonne.toStone(megatonne: Megatonne): Stone
	return Kilogram.toStone(Megatonne.toKilogram(megatonne))
end
function Megatonne.toTon(megatonne: Megatonne): Ton
	return Kilogram.toTon(Megatonne.toKilogram(megatonne))
end
function Megatonne.toKiloton(megatonne: Megatonne): Kiloton
	return Kilogram.toKiloton(Megatonne.toKilogram(megatonne))
end
function Megatonne.toMegaton(megatonne: Megatonne): Megaton
	return Kilogram.toMegaton(Megatonne.toKilogram(megatonne))
end
function Megatonne.toGram(megatonne: Megatonne): Gram
	return Kilogram.toGram(Megatonne.toKilogram(megatonne))
end
function Megatonne.toMilligram(megatonne: Megatonne): Milligram
	return Kilogram.toMilligram(Megatonne.toKilogram(megatonne))
end
function Megatonne.toTonne(megatonne: Megatonne): Tonne
	return Kilogram.toTonne(Megatonne.toKilogram(megatonne))
end
function Megatonne.toKilotonne(megatonne: Megatonne): Kilotonne
	return Kilogram.toKilotonne(Megatonne.toKilogram(megatonne))
end

return {
	Ounce = Ounce,
	Pound = Pound,
	Stone = Stone,
	Ton = Ton,
	Kiloton = Kiloton,
	Megaton = Megaton,
	Gram = Gram,
	Kilogram = Kilogram,
	Milligram = Milligram,
	Tonne = Tonne,
	Kilotonne = Kilotonne,
	Megatonne = Megatonne,
}