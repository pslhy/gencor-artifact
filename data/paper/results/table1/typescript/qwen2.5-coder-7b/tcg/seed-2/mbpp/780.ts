function find_combinations(test_list: [number, number][]): [number, number][] { 
    let res: [number, number][] = []; 
    function comb(arr: [number, number][], sum: number, start: number, curr: number[]) : void { 
        if (sum === curr.reduce((a: number, b: number) => a + b, 0)) { 
            res.push([...curr.slice() + arr[start][1]                              
                          .toString() + ' ' + arr[start][1]                                 
                          .toString() + ' ' + arr[start][1] + ' ' + arr[start][1]                               + arr[start][0]                
                          .toString() + ' ' + arr[start][1


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/