function intersection_array(array_nums1: number[], array_nums2: number[]): number[] {
    const set1 = new Set(array_nums1);
    const set2 = new Set(array_nums2);
  
    const intersection = [...set1].filter(value => set2.has(value));

    return intersection;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the intersection of two arrays.
