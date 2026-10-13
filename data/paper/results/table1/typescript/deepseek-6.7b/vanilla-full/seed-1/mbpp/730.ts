function consecutive_duplicates(nums: any[]): any[] {
    let res: any[] = [];
    for(let i = 0; i < nums.length; i++){
        if(nums[i] !== nums[i + 1]){
            res.push(nums[i]);
        }
    }
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove consecutive duplicates of a given array.
