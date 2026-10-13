
function group_tuples(Input: string[][]): string[][] {    
    let countMap = new Map<string, number>();

    for(let tuple of Input) {
        if (tuple.length === 0) continue;
        countMap.set(tuple[0], (countMap.get(tuple[0]) || 0) + 1);
    }

    let commonElements = Array.from(countMap.entries())
                            .filter(([_, count]) => count === Input.length);

    let commonKeys = commonElements.map(([key, _]) => key);

    return Input.filter(tuple => commonKeys.includes(tuple[0]));
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
