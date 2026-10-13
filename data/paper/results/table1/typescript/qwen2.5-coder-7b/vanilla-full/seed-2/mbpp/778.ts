function pack_consecutive_duplicates(list1: any[]): any[][] { 
    let result: any[][] = [];
    let currentSubarray: any[] = [];

    for (let i = 0; i < list1.length; i++) { 
        if (currentSubarray.length === 0 || list1[i] === currentSubarray[currentSubarray.length - 1]) {
            currentSubarray.push(list1[i]);
        } else {
            result.push(currentSubarray);
            currentSubarray = [list1[i]];
        }
    }

    if (currentSubarray.length > 0) {
        result.push(currentSubarray);
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
