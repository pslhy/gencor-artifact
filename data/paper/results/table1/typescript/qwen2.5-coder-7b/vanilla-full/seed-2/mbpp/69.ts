function is_sublist(l: number[], s: number[]): boolean { 
    let flag = [false].concat(...repeat(s, l.length / s.length)); 

    for (let i = 0; i < s.length; i++) { 
        if (l[i] !== s[i]) {
            return false;
        }
    }
    return true;
}

function repeat(array: number[], times: number): number[] {
    let repeatedArray: number[] = [];
    for (let i = 0; i < times; i++) {
        repeatedArray = repeatedArray.concat(array);
    }
    return repeatedArray;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.
