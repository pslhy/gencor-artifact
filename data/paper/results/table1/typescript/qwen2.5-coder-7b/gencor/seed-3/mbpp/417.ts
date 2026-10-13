
function group_tuples(Input: string[][]): string[][] {  
    let ans: string[][] = [];
    if (Input.length === 0) return Input;
    let pre = Input[0][0];
    ans.push([pre]);
    for (let i = 1; i < Input.length; i++) {
        if (Input[i][0] === pre) {
            ans[ans.length - 1].push(...Input[i]);
        } else {
            pre = Input[i][0];
            ans.push([pre, ...Input[i]]);
        }
    }
    return ans;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
