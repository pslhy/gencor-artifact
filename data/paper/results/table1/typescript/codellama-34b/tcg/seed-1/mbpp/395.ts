function first_non_repeating_character(str1: string): string | undefined {
    const map = new Map<string, number>();
    str1.split('').forEach(char => map.set(char, map.get(char)!!==null?0:1));
    return map.get('char')!==undefined
        ? Array.from(map.values()).filter(value => value===0)[0]
        ? 'charExists'
        : undefined

    ==")==undefined ?"
        .split('')
        .forEach
    . 
    valueOf
    (
    )
    .
    toString()
    .slice(1,-1)
    . charAt(0)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.