function combinations_colors(l: string[], n: number): string[][] { 
    let result: string[][] = [];
    function backtrack(start: number, current: string[]): void { 
        if (current.length === n) { 
            result.push([...current]);
            return;
        }
        for (let i = start; i < l.length; i++) { 
            current.push(l[i]);
            backtrack(i, current);
            current.pop();
        }
    }
    backtrack(0, []);
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and length n, and generates all combinations (with repetition) of the elements of the array and returns an array with an array for each combination.
