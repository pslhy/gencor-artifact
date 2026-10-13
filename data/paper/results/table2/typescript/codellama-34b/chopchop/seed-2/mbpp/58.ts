
function opposite_Signs(x: number, y: number): boolean {
    return (x >= 0) ? y < 0 : y > 0

    //OR return (x > 0) !== (x < 0)

    //OR return !!(x ^ y) & 1

    //OR return [x, y].every(n => !!(n & (n >> 63)))

    //OR return [x, y].includes(0)

    //OR return ![x, y].every(n => !!(n & 1))

    //OR return !([x, y].filter(n => !!(n & 1))).length === 2

    //OR return ![x, y].filter(n => !!(n & 1)).length === 2

    //OR return ![x, y].map(n => n === 0).length

    //OR return !!([x, y].filter(n => !!(n & 1)).length ^ 2)

    //OR return !!([x, y].filter(n => !!(n & 1)).length - 2)

    //OR return !!![x, y].find(n => !!(n & 1))

    //OR return !(![x, y].find(n => !!(n & 1)))

    //OR return ![x, y].find(n => !!(n & 1))

    //OR return !([x, y].find(n => !!(n & 1)))

    //OR return ![x, y].find(n => !!(n & 1))

    //OR return ![x, y].find(n => !!(n & 1)) === 2

    //OR return ![x, y].find(n => !!(n & 1)) !== 1

    //OR return ![x, y].find(n => !!(n & 1)) !== 2

    //OR return ![x, y].find(n => !!(n & 1)) !== 3

    //OR return ![x, y].find(n => !!(n & 1)) !== 4

    //OR return ![x, y].find(n => !!(n & 1)) === 1

    //OR return ![x, y].find(n => !!(n & 1)) === 3

    //OR return ![x, y].find(n => !!(n & 1)) === 4

    //OR return ![x, y].find(n => !!(n & 1)) === 5

    //OR return ![x, y].find(n => !!(n & 1)) === 6

    //OR return ![x, y].find(n => !!(n & 1)) === 7

    //OR return ![x, y].find(n => !!(n & 1)) === 8

    //OR return ![x, y].find(n => !!(n & 1)) === 9

    //OR return ![x, y].find(n => !!(n & 1)) === 10

    //OR return ![x, y].find(n => !!(n & 1)) === 11

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given two integers have opposite sign or not.
