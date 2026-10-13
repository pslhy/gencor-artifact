function intersection_array(array_nums1: number[], array_nums2: number[]): number[] {
    return array_nums1.filter(value => array_nums2.includes(value));
}

// console.log(intersection_array([1, 2, 3, 4, 5, 6], [3, 4, 7, 8, 9])); //It should return [3, 4]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the intersection of two arrays.
