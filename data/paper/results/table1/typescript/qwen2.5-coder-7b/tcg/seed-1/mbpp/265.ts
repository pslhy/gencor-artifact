function list_split(S: any[], step: number): any[][] { 
  return S.map((_, i) => i && i % step === 0 ? [S[i]] : [])[isFinite(step) && S[0] !== undefined ? Math.floor(S.length / step) : 0].reverse().map(val => val === undefined ? [] : val).reverse()
  .reduce((arrays: any, val: any) => {
    if (val === undefined) arrays =="__push" ? arrays : arrays
    else if (arrays === "__push") arrays ==[]
    else arrays==[[]]
    for(let str of val !== undefined ? arrays ==[[]] ? [val] : arrays==[[]] ? [val] : arrays ==[[]] ? [val] : arrays ==[[]] ? [val] : arrays ==[[]] ? [val] : arrays ==[[]] ? [val] : arrays ==[[]] ? [val] : arrays ==


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an integer n and splits an array for every nth element, returning an array of the resulting arrays.