function Find_Max_Length(lst: number[][]): number {
    let sum = 0;
    let maxLen = 0;
    let map = new Map<number, number>();
    map.set(0, -1);
  
    for (let i = 0; i < lst.length; i++) {
        sum += lst[i][0] == 1 ? 1 : -1;

        if (!map.has(sum)) {
            map.set(sum, i);
        } else {
            maxLen = Math.max(maxLen, i - map.get(sum));
        }
    }
  
    return maxLen;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest subarrays.
