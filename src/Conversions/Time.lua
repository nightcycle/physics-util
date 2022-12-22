--!strict
--- @type Millenia Float
--- @within Physics
export type Millenia = number

--- @type Century Float
--- @within Physics
export type Century = number

--- @type Decade Float
--- @within Physics
export type Decade = number

--- @type Year Float
--- @within Physics
export type Year = number

--- @type Week Float
--- @within Physics
export type Week = number

--- @type Day Float
--- @within Physics
export type Day = number

--- @type Hour Float
--- @within Physics
export type Hour = number

--- @type Minute Float
--- @within Physics
export type Minute = number

--- @type Second Float
--- @within Physics
export type Second = number

--- @type Millisecond Float
--- @within Physics
export type Millisecond = number

--- @type Microsecond Float
--- @within Physics
export type Microsecond = number

--- @type Nanosecond Float
--- @within Physics
export type Nanosecond = number

--- @type Picosecond Float
--- @within Physics
export type Picosecond = number

-- Constants
local YEARS_IN_MILLENIA = 1000
local YEARS_IN_CENTURY = 100
local YEARS_IN_DECADE = 10

local DAYS_IN_YEAR = 365.25
local DAYS_IN_WEEK = 7

local SECONDS_IN_MINUTE = 60
local SECONDS_IN_HOUR = SECONDS_IN_MINUTE*60
local SECONDS_IN_DAY = SECONDS_IN_HOUR * 24

local MICROSECONDS_IN_MILLISECOND = 1000
local MICROSECONDS_IN_SECOND = 1000*MICROSECONDS_IN_MILLISECOND

local PICOSECONDS_IN_NANOSECOND = 1000
local PICOSECONDS_IN_MICROSECOND = 1000*PICOSECONDS_IN_NANOSECOND

local Second = {}
function Second.toMinute(second: Second): Minute
	return second / SECONDS_IN_MINUTE
end
function Second.toHour(second: Second): Hour
	return second / SECONDS_IN_HOUR
end
function Second.toDay(second: Second): Day
	return second / SECONDS_IN_DAY
end
function Second.toWeek(second: Second): Week
	return Second.toDay(second) / DAYS_IN_WEEK
end
function Second.toYear(second: Second): Year
	return Second.toDay(second) / DAYS_IN_YEAR
end
function Second.toDecade(second: Second): Decade
	return Second.toYear(second) / YEARS_IN_DECADE
end
function Second.toCentury(second: Second): Century
	return Second.toYear(second) / YEARS_IN_CENTURY
end
function Second.toMillenia(second: Second): Millenia
	return Second.toYear(second) / YEARS_IN_MILLENIA
end
function Second.toMicrosecond(second: Second): Microsecond
	return second * MICROSECONDS_IN_SECOND
end
function Second.toMillisecond(second: Second): Millisecond
	return Second.toMicrosecond(second) / MICROSECONDS_IN_MILLISECOND
end
function Second.toPicosecond(second: Second): Picosecond
	return Second.toMicrosecond(second) * PICOSECONDS_IN_MICROSECOND
end
function Second.toNanosecond(second: Second): Nanosecond
	return Second.toPicosecond(second) / PICOSECONDS_IN_NANOSECOND
end

local Day = {}
function Day.toSecond(day: Day): Second
	return day * SECONDS_IN_DAY
end
function Day.toMinute(day: Day): Minute
	return Second.toMinute(Day.toSecond(day))
end
function Day.toHour(day: Day): Hour
	return Second.toHour(Day.toSecond(day))
end
function Day.toWeek(day: Day): Week
	return Second.toWeek(Day.toSecond(day))
end
function Day.toYear(day: Day): Year
	return Second.toYear(Day.toSecond(day))
end
function Day.toDecade(day: Day): Decade
	return Second.toDecade(Day.toSecond(day))
end
function Day.toCentury(day: Day): Century
	return Second.toCentury(Day.toSecond(day))
end
function Day.toMillenia(day: Day): Millenia
	return Second.toMillenia(Day.toSecond(day))
end
function Day.toMicrosecond(day: Day): Microsecond
	return Second.toMicrosecond(Day.toSecond(day))
end
function Day.toMillisecond(day: Day): Millisecond
	return Second.toMillisecond(Day.toSecond(day))
end
function Day.toPicosecond(day: Day): Picosecond
	return Second.toPicosecond(Day.toSecond(day))
end
function Day.toNanosecond(day: Day): Nanosecond
	return Second.toNanosecond(Day.toSecond(day))
end

local Year = {}
function Year.toDay(year: Year): Year
	return year * DAYS_IN_YEAR
end
function Year.toSecond(year: Year): Second
	return Day.toMinute(Year.toDay(year))
end
function Year.toMinute(year: Year): Minute
	return Day.toMinute(Year.toDay(year))
end
function Year.toHour(year: Year): Hour
	return Day.toHour(Year.toDay(year))
end
function Year.toWeek(year: Year): Week
	return Day.toWeek(Year.toDay(year))
end
function Year.toDecade(year: Year): Decade
	return Day.toDecade(Year.toDay(year))
end
function Year.toCentury(year: Year): Century
	return Day.toCentury(Year.toDay(year))
end
function Year.toMillenia(year: Year): Millenia
	return Day.toMillenia(Year.toDay(year))
end
function Year.toMicrosecond(year: Year): Microsecond
	return Day.toMicrosecond(Year.toDay(year))
end
function Year.toMillisecond(year: Year): Millisecond
	return Day.toMillisecond(Year.toDay(year))
end
function Year.toPicosecond(year: Year): Picosecond
	return Day.toPicosecond(Year.toDay(year))
end
function Year.toNanosecond(year: Year): Nanosecond
	return Day.toNanosecond(Year.toDay(year))
end

local Microsecond = {}
function Microsecond.toSecond(microsecond: Microsecond): Second
	return microsecond / MICROSECONDS_IN_SECOND
end
function Microsecond.toMillisecond(microsecond: Microsecond): Millisecond
	return microsecond / MICROSECONDS_IN_MILLISECOND
end
function Microsecond.toMinute(microsecond: Microsecond): Minute
	return Second.toMinute(Microsecond.toSecond(microsecond))
end
function Microsecond.toHour(microsecond: Microsecond): Hour
	return Second.toHour(Microsecond.toSecond(microsecond))
end
function Microsecond.toDay(microsecond: Microsecond): Day
	return Second.toDay(Microsecond.toSecond(microsecond))
end
function Microsecond.toWeek(microsecond: Microsecond): Week
	return Second.toWeek(Microsecond.toSecond(microsecond))
end
function Microsecond.toYear(microsecond: Microsecond): Year
	return Second.toYear(Microsecond.toSecond(microsecond))
end
function Microsecond.toDecade(microsecond: Microsecond): Decade
	return Second.toDecade(Microsecond.toSecond(microsecond))
end
function Microsecond.toCentury(microsecond: Microsecond): Century
	return Second.toCentury(Microsecond.toSecond(microsecond))
end
function Microsecond.toMillenia(microsecond: Microsecond): Millenia
	return Second.toMillenia(Microsecond.toSecond(microsecond))
end
function Microsecond.toPicosecond(microsecond: Microsecond): Picosecond
	return Second.toPicosecond(Microsecond.toSecond(microsecond))
end
function Microsecond.toNanosecond(microsecond: Microsecond): Nanosecond
	return Second.toNanosecond(Microsecond.toSecond(microsecond))
end

local Picosecond = {}
function Picosecond.toMicrosecond(picosecond: Picosecond): Microsecond
	return picosecond / PICOSECONDS_IN_MICROSECOND
end
function Picosecond.toNanosecond(picosecond: Picosecond): Nanosecond
	return picosecond / PICOSECONDS_IN_NANOSECOND
end
function Picosecond.toSecond(picosecond: Picosecond): Second
	return Microsecond.toSecond(Picosecond.toMicrosecond(picosecond))
end
function Picosecond.toMillisecond(picosecond: Picosecond): Millisecond
	return Microsecond.toMillisecond(Picosecond.toMicrosecond(picosecond))
end
function Picosecond.toMinute(picosecond: Picosecond): Minute
	return Microsecond.toMinute(Picosecond.toMicrosecond(picosecond))
end
function Picosecond.toHour(picosecond: Picosecond): Hour
	return Microsecond.toHour(Picosecond.toMicrosecond(picosecond))
end
function Picosecond.toDay(picosecond: Picosecond): Day
	return Microsecond.toDay(Picosecond.toMicrosecond(picosecond))
end
function Picosecond.toWeek(picosecond: Picosecond): Week
	return Microsecond.toWeek(Picosecond.toMicrosecond(picosecond))
end
function Picosecond.toYear(picosecond: Picosecond): Year
	return Microsecond.toYear(Picosecond.toMicrosecond(picosecond))
end
function Picosecond.toDecade(picosecond: Picosecond): Decade
	return Microsecond.toDecade(Picosecond.toMicrosecond(picosecond))
end
function Picosecond.toCentury(picosecond: Picosecond): Century
	return Microsecond.toCentury(Picosecond.toMicrosecond(picosecond))
end
function Picosecond.toMillenia(picosecond: Picosecond): Millenia
	return Microsecond.toMillenia(Picosecond.toMicrosecond(picosecond))
end

local Nanosecond = {}
function Nanosecond.toPicosecond(nanosecond: Nanosecond): Nanosecond
	return nanosecond * PICOSECONDS_IN_NANOSECOND
end
function Nanosecond.toMicrosecond(nanosecond: Nanosecond): Microsecond
	return Picosecond.toMicrosecond(Nanosecond.toPicosecond(nanosecond))
end
function Nanosecond.toSecond(nanosecond: Nanosecond): Second
	return Picosecond.toSecond(Nanosecond.toPicosecond(nanosecond))
end
function Nanosecond.toMillisecond(nanosecond: Nanosecond): Millisecond
	return Picosecond.toMillisecond(Nanosecond.toPicosecond(nanosecond))
end
function Nanosecond.toMinute(nanosecond: Nanosecond): Minute
	return Picosecond.toMinute(Nanosecond.toPicosecond(nanosecond))
end
function Nanosecond.toHour(nanosecond: Nanosecond): Hour
	return Picosecond.toHour(Nanosecond.toPicosecond(nanosecond))
end
function Nanosecond.toDay(nanosecond: Nanosecond): Day
	return Picosecond.toDay(Nanosecond.toPicosecond(nanosecond))
end
function Nanosecond.toWeek(nanosecond: Nanosecond): Week
	return Picosecond.toWeek(Nanosecond.toPicosecond(nanosecond))
end
function Nanosecond.toYear(nanosecond: Nanosecond): Year
	return Picosecond.toYear(Nanosecond.toPicosecond(nanosecond))
end
function Nanosecond.toDecade(nanosecond: Nanosecond): Decade
	return Picosecond.toDecade(Nanosecond.toPicosecond(nanosecond))
end
function Nanosecond.toCentury(nanosecond: Nanosecond): Century
	return Picosecond.toCentury(Nanosecond.toPicosecond(nanosecond))
end
function Nanosecond.toMillenia(nanosecond: Nanosecond): Millenia
	return Picosecond.toMillenia(Nanosecond.toPicosecond(nanosecond))
end

local Millisecond = {}
function Millisecond.toMicrosecond(millisecond: Millisecond): Millisecond
	return millisecond * MICROSECONDS_IN_MILLISECOND
end
function Millisecond.toSecond(millisecond: Millisecond): Second
	return Microsecond.toMinute(Millisecond.toMicrosecond(millisecond))
end
function Millisecond.toMinute(millisecond: Millisecond): Minute
	return Microsecond.toMinute(Millisecond.toMicrosecond(millisecond))
end
function Millisecond.toHour(millisecond: Millisecond): Hour
	return Microsecond.toHour(Millisecond.toMicrosecond(millisecond))
end
function Millisecond.toDay(millisecond: Millisecond): Day
	return Microsecond.toDay(Millisecond.toMicrosecond(millisecond))
end
function Millisecond.toWeek(millisecond: Millisecond): Week
	return Microsecond.toWeek(Millisecond.toMicrosecond(millisecond))
end
function Millisecond.toYear(millisecond: Millisecond): Year
	return Microsecond.toYear(Millisecond.toMicrosecond(millisecond))
end
function Millisecond.toDecade(millisecond: Millisecond): Decade
	return Microsecond.toDecade(Millisecond.toMicrosecond(millisecond))
end
function Millisecond.toCentury(millisecond: Millisecond): Century
	return Microsecond.toCentury(Millisecond.toMicrosecond(millisecond))
end
function Millisecond.toMillenia(millisecond: Millisecond): Millenia
	return Microsecond.toMillenia(Millisecond.toMicrosecond(millisecond))
end
function Millisecond.toPicosecond(millisecond: Millisecond): Picosecond
	return Microsecond.toPicosecond(Millisecond.toMicrosecond(millisecond))
end
function Millisecond.toNanosecond(millisecond: Millisecond): Nanosecond
	return Microsecond.toNanosecond(Millisecond.toMicrosecond(millisecond))
end

local Minute = {}
function Minute.toSecond(minute: Minute): Second
	return minute * SECONDS_IN_MINUTE
end
function Minute.toDay(minute: Minute): Minute
	return Second.toDay(Minute.toSecond(minute))
end
function Minute.toHour(minute: Minute): Hour
	return Second.toHour(Minute.toSecond(minute))
end
function Minute.toWeek(minute: Minute): Week
	return Second.toWeek(Minute.toSecond(minute))
end
function Minute.toYear(minute: Minute): Year
	return Second.toYear(Minute.toSecond(minute))
end
function Minute.toDecade(minute: Minute): Decade
	return Second.toDecade(Minute.toSecond(minute))
end
function Minute.toCentury(minute: Minute): Century
	return Second.toCentury(Minute.toSecond(minute))
end
function Minute.toMillenia(minute: Minute): Millenia
	return Second.toMillenia(Minute.toSecond(minute))
end
function Minute.toMicrosecond(minute: Minute): Microsecond
	return Second.toMicrosecond(Minute.toSecond(minute))
end
function Minute.toMillisecond(minute: Minute): Millisecond
	return Second.toMillisecond(Minute.toSecond(minute))
end
function Minute.toPicosecond(minute: Minute): Picosecond
	return Second.toPicosecond(Minute.toSecond(minute))
end
function Minute.toNanosecond(minute: Minute): Nanosecond
	return Second.toNanosecond(Minute.toSecond(minute))
end


local Hour = {}
function Hour.toSecond(hour: Hour): Hour
	return hour * SECONDS_IN_HOUR
end
function Hour.toDay(hour: Hour): Second
	return Second.toDay(Hour.toSecond(hour))
end
function Hour.toMinute(hour: Hour): Minute
	return Second.toMinute(Hour.toSecond(hour))
end
function Hour.toWeek(hour: Hour): Week
	return Second.toWeek(Hour.toSecond(hour))
end
function Hour.toYear(hour: Hour): Year
	return Second.toYear(Hour.toSecond(hour))
end
function Hour.toDecade(hour: Hour): Decade
	return Second.toDecade(Hour.toSecond(hour))
end
function Hour.toCentury(hour: Hour): Century
	return Second.toCentury(Hour.toSecond(hour))
end
function Hour.toMillenia(hour: Hour): Millenia
	return Second.toMillenia(Hour.toSecond(hour))
end
function Hour.toMicrosecond(hour: Hour): Microsecond
	return Second.toMicrosecond(Hour.toSecond(hour))
end
function Hour.toMillisecond(hour: Hour): Millisecond
	return Second.toMillisecond(Hour.toSecond(hour))
end
function Hour.toPicosecond(hour: Hour): Picosecond
	return Second.toPicosecond(Hour.toSecond(hour))
end
function Hour.toNanosecond(hour: Hour): Nanosecond
	return Second.toNanosecond(Hour.toSecond(hour))
end

local Week = {}
function Week.toDay(week: Week): Week
	return week * DAYS_IN_WEEK
end
function Week.toSecond(week: Week): Second
	return Day.toMinute(Week.toDay(week))
end
function Week.toMinute(week: Week): Minute
	return Day.toMinute(Week.toDay(week))
end
function Week.toHour(week: Week): Hour
	return Day.toHour(Week.toDay(week))
end
function Week.toYear(week: Week): Week
	return Day.toYear(Week.toDay(week))
end
function Week.toDecade(week: Week): Decade
	return Day.toDecade(Week.toDay(week))
end
function Week.toCentury(week: Week): Century
	return Day.toCentury(Week.toDay(week))
end
function Week.toMillenia(week: Week): Millenia
	return Day.toMillenia(Week.toDay(week))
end
function Week.toMicrosecond(week: Week): Microsecond
	return Day.toMicrosecond(Week.toDay(week))
end
function Week.toMillisecond(week: Week): Millisecond
	return Day.toMillisecond(Week.toDay(week))
end
function Week.toPicosecond(week: Week): Picosecond
	return Day.toPicosecond(Week.toDay(week))
end
function Week.toNanosecond(week: Week): Nanosecond
	return Day.toNanosecond(Week.toDay(week))
end

local Millenia = {}
function Millenia.toYear(millenia: Millenia): Year
	return millenia * YEARS_IN_MILLENIA
end
function Millenia.toSecond(millenia: Millenia): Second
	return Year.toSecond(Millenia.toYear(millenia))
end
function Millenia.toMinute(millenia: Millenia): Minute
	return Year.toMinute(Millenia.toYear(millenia))
end
function Millenia.toHour(millenia: Millenia): Hour
	return Year.toHour(Millenia.toYear(millenia))
end
function Millenia.toWeek(millenia: Millenia): Week
	return Year.toWeek(Millenia.toYear(millenia))
end
function Millenia.toDecade(millenia: Millenia): Decade
	return Year.toDecade(Millenia.toYear(millenia))
end
function Millenia.toCentury(millenia: Millenia): Century
	return Year.toCentury(Millenia.toYear(millenia))
end
function Millenia.toDay(millenia: Millenia): Millenia
	return Year.toDay(Millenia.toYear(millenia))
end
function Millenia.toMicrosecond(millenia: Millenia): Microsecond
	return Year.toMicrosecond(Millenia.toYear(millenia))
end
function Millenia.toMillisecond(millenia: Millenia): Millisecond
	return Year.toMillisecond(Millenia.toYear(millenia))
end
function Millenia.toPicosecond(millenia: Millenia): Picosecond
	return Year.toPicosecond(Millenia.toYear(millenia))
end
function Millenia.toNanosecond(millenia: Millenia): Nanosecond
	return Year.toNanosecond(Millenia.toYear(millenia))
end

local Decade = {}
function Decade.toYear(decade: Decade): Year
	return decade * YEARS_IN_DECADE
end
function Decade.toMillenia(decade: Decade): Decade
	return Year.toDecade(Decade.toYear(decade))
end
function Decade.toSecond(decade: Decade): Second
	return Year.toSecond(Decade.toYear(decade))
end
function Decade.toMinute(decade: Decade): Minute
	return Year.toMinute(Decade.toYear(decade))
end
function Decade.toHour(decade: Decade): Hour
	return Year.toHour(Decade.toYear(decade))
end
function Decade.toWeek(decade: Decade): Week
	return Year.toWeek(Decade.toYear(decade))
end
function Decade.toCentury(decade: Decade): Century
	return Year.toCentury(Decade.toYear(decade))
end
function Decade.toDay(decade: Decade): Decade
	return Year.toDay(Decade.toYear(decade))
end
function Decade.toMicrosecond(decade: Decade): Microsecond
	return Year.toMicrosecond(Decade.toYear(decade))
end
function Decade.toMillisecond(decade: Decade): Millisecond
	return Year.toMillisecond(Decade.toYear(decade))
end
function Decade.toPicosecond(decade: Decade): Picosecond
	return Year.toPicosecond(Decade.toYear(decade))
end
function Decade.toNanosecond(decade: Decade): Nanosecond
	return Year.toNanosecond(Decade.toYear(decade))
end

local Century = {}
function Century.toYear(century: Century): Year
	return century * YEARS_IN_CENTURY
end
function Century.toMillenia(century: Century): Century
	return Year.toMillenia(Century.toYear(century))
end
function Century.toSecond(century: Century): Second
	return Year.toSecond(Century.toYear(century))
end
function Century.toMinute(century: Century): Minute
	return Year.toMinute(Century.toYear(century))
end
function Century.toHour(century: Century): Hour
	return Year.toHour(Century.toYear(century))
end
function Century.toWeek(century: Century): Week
	return Year.toWeek(Century.toYear(century))
end
function Century.toDecade(century: Century): Decade
	return Year.toDecade(Century.toYear(century))
end
function Century.toDay(century: Century): Century
	return Year.toDay(Century.toYear(century))
end
function Century.toMicrosecond(century: Century): Microsecond
	return Year.toMicrosecond(Century.toYear(century))
end
function Century.toMillisecond(century: Century): Millisecond
	return Year.toMillisecond(Century.toYear(century))
end
function Century.toPicosecond(century: Century): Picosecond
	return Year.toPicosecond(Century.toYear(century))
end
function Century.toNanosecond(century: Century): Nanosecond
	return Year.toNanosecond(Century.toYear(century))
end

return {
	Millenia = Millenia,
	Century = Century,
	Decade = Decade,
	Year = Year,
	Week = Week,
	Day = Day,
	Hour = Hour,
	Minute = Minute,
	Second = Second,
	Millisecond = Millisecond,
	Microsecond = Microsecond,
	Nanosecond = Nanosecond,
	Picosecond = Picosecond,
}