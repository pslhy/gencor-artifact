
function Find_Min(lst: any[][]): any[] {  
    let ans: any[] = [];
    let len = Infinity;

    for(let i = 0; i < lst.length; i++) {
        if(lst[i].length < len) {
            len = lst[i].length;
            ans = lst[i];
        }
    }

    return ans;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.
