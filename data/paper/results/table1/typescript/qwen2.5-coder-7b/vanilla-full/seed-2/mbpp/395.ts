function first_non_repeating_character(str1: string): string | undefined { 
    let count: { [key: string]: number } = {};

    for (let i = 0; i < str1.length; i++) { 
        if (count[str1[i]]) { 
            count[str1[i]]++;
        } else {
            count[str1[i]] = 1;
        }
    }

    for (let i = 0; i < str1.length; i++) {
        if (count[str1[i]] === 1) { 
            return str1[i];
        }
    }

    return undefined; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.
