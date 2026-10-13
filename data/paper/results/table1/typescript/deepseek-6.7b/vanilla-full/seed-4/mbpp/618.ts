function div_list(nums1: number[], nums2: number[]): number[] {
    if (nums1.length != nums2.length) {
        throw new Error("Arrays must be of equal length");
    }
    let result: number[] = [];
    for (let i = 0; i < nums1.length; i++) {
        if (nums2[i] == 0) {
            throw new Error("Division by zero error");
        }
        result.push(nums1[i] / nums2[i]);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to divide two arrays element wise.
