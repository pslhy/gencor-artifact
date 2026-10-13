function even_position(nums: number[]): boolean { 
    for (let i = 0; i < nums.length; i += 2) { 
        if (nums[i] % 2 !== 0) { 
            return false; 
        } 
    } 
    return true; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether every even index contains even numbers of a given array.
