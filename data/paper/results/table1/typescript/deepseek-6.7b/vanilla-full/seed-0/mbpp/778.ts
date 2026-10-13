function pack_consecutive_duplicates(list1: any[]): any[][] {
    let result = [];
    let subarray = [list1[0]];
    
    for (let i = 1; i < list1.length; i++) {
        if (list1[i] === list1[i - 1]) {
            subarray.push(list1[i]);
        } else {
            result.push(subarray);
            subarray = [list1[i]];
        }
    }
    
    result.push(subarray);
    return result;
}

console.log(pack_consecutive_duplicates([1, 1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
