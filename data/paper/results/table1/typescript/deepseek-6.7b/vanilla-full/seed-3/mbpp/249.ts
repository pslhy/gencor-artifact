function intersection_array(array_nums1: number[], array_nums2: number[]): number[] {
    let result: number[] = [];
    let hash: { [key: number]: number } = {};
    for (let i = 0; i < array_nums1.length; i++) {
        if (hash[array_nums1[i]]) {
            hash[array_nums1[i]]++;
        } else {
            hash[array_nums1[i]] = 1;
        }
    }
    for (let i = 0; i < array_nums2.length; i++) {
        if (hash[array_nums2[i]] && hash[array_nums2[i]] > 0) {
            result.push(array_nums2[i]);
            hash[array_nums2[i]]--;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the intersection of two arrays.
