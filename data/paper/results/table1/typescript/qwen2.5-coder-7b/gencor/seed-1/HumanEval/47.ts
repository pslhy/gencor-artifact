
function median(l: number[]): number { 
    l.sort((a, b) => a - b);
    const midIndex = Math.floor(l.length / 2);

    if (l.length % 2 === 0) {
        return (l[midIndex - 1] + l[midIndex]) / 2;
    } else {
        return l[midIndex];
    }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return median of elements in the array l.
//     >>> median([3, 1, 2, 4, 5])
//     3
//     >>> median([-10, 4, 6, 1000, 10, 20])
//     15.0
