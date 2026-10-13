function closest_num(N: number): number {
    const nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    return nums.find(v => v < N)!!== undefined ? 0 : nums.reduce((prev: number, cur: number) => Math.abs(cur - N) < Math.abs(prev - N) ? cur : prev);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the closest smaller number than n.