export type Expectation = {
	to: Expectation,
	be: Expectation,
	been: Expectation,
	have: Expectation,
	was: Expectation,
	at: Expectation,
	a: (typeName: string?) -> Expectation,
	an: (typeName: string?) -> Expectation,
	ok: () -> Expectation,
	throw: (message: string?) -> Expectation,
	near: (goal: number, limit: number?) -> Expectation,
	equal: (goal: number) -> Expectation,
}

declare function describe(name: string, out: () -> ()): ()

declare function it(name: string, out: () -> ()): ()

declare function expect(value: any): Expectation

declare function afterAll(func: () -> ()): ()

declare function afterEach(func: () -> ()): ()

declare function beforeAll(func: () -> ()): ()

declare function beforeEach(func: () -> ()): ()

declare function FIXME(message: string?): ()

declare function FOCUS(): ()
	
declare function SKIP(): ()

declare function describeFOCUS(phrase: string): ()

declare function describeSKIP(phrase: string): ()	

declare function itFOCUS(phrase: string, callback: ((context: {[any]: any}) -> ())): ()

declare function itSKIP(phrase: string, callback: ((context: {[any]: any}) -> ())): ()

declare function itFIXME(phrase: string, callback: ((context: {[any]: any}) -> ())): ()