function Find_Min(lst: any[][]): any[] {  
    let ans: any[] = lst[0];  
    for(let i = 1; i < lst.length; i++) {  
        if(lst[i].length < ans.length) {  
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