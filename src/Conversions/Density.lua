--!strict
--- @type GramPerMilliliter Float
--- @within Physics
export type GramPerMilliliter = number

--- @type GramPerCubicCentimeter Float
--- @within Physics
export type GramPerCubicCentimeter = number

--- @type KilogramsPerCubicMeter Float
--- @within Physics
export type KilogramsPerCubicMeter = number

-- Constants
local GPM_IN_GPCC = 1/(10^6)
local KPCM_IN_GPCC = 1/1000

local GramPerCubicCentimeter = {}
function GramPerCubicCentimeter.toKilogramsPerCubicMeter(gramPerCubicCentimeter: GramPerCubicCentimeter): KilogramsPerCubicMeter
	return gramPerCubicCentimeter * KPCM_IN_GPCC
end
function GramPerCubicCentimeter.toGramPerMilliliter(gramPerCubicCentimeter: GramPerCubicCentimeter): GramPerMilliliter
	return gramPerCubicCentimeter * GPM_IN_GPCC
end

local GramPerMilliliter = {}
function GramPerMilliliter.toGramPerCubicCentimeter(gramPerMilliliter: GramPerMilliliter): GramPerCubicCentimeter
	return gramPerMilliliter / GPM_IN_GPCC
end
function GramPerMilliliter.toKilogramsPerCubicMeter(gramPerCubicCentimeter: GramPerCubicCentimeter): KilogramsPerCubicMeter
	return GramPerCubicCentimeter.toKilogramsPerCubicMeter(GramPerMilliliter.toGramPerCubicCentimeter(gramPerCubicCentimeter))
end

local KilogramsPerCubicMeter = {}
function KilogramsPerCubicMeter.toGramPerCubicCentimeter(kilogramsPerCubicMeter: KilogramsPerCubicMeter): GramPerCubicCentimeter
	return kilogramsPerCubicMeter / KPCM_IN_GPCC
end
function KilogramsPerCubicMeter.toKilogramsPerCubicMeter(kilogramsPerCubicMeter: KilogramsPerCubicMeter): KilogramsPerCubicMeter
	return GramPerCubicCentimeter.toKilogramsPerCubicMeter(KilogramsPerCubicMeter.toGramPerCubicCentimeter(kilogramsPerCubicMeter))
end

return {
	GramPerCubicCentimeter = GramPerCubicCentimeter,
	KilogramsPerCubicMeter = KilogramsPerCubicMeter,
	GramPerMilliliter = GramPerMilliliter,
}