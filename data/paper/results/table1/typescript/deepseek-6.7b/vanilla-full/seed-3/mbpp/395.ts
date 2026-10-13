function first_non_repeating_character(str1: string): string | undefined {
    let count = new Map<string, number>();
    for(let i = 0;i < str1.length;i++){
        if(!count.has(str1[i])){
            count.set(str1[i], 1);
        } else {
            let cnt = count.get(str1[i]) as number;
            count.set(str1[i], cnt + 1);
        }
    }
    for(let i = 0; i < str1.length;i++){
        if(count.get(str1[i]) === 1){
            return str1[i];
        }
    }
    return undefined;
}

console.log(first_non_repeating_character('teset')); // returns 't'


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.
