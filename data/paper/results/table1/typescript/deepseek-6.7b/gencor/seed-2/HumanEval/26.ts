
function remove_duplicates(numbers: number[]): number[] {
    let counts = new Map<number, number>();
    let result: number[] = [];
  
    for (let num of numbers) {
        if (counts.has(num)) {
            counts.set(num, counts.get(num)! + 1);
        } else {
            counts.set(num, 1);
        }
    }
  
    for (let num of numbers) {
        if (counts.get(num)! === 1) {
            result.push(num);
        }
    }
  
    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     From an array of integers, remove all elements that occur more than once.
//     Keep order of elements left the same as in the input.
//     >>> remove_duplicates([1, 2, 3, 2, 4])
//     [1, 3, 4]
