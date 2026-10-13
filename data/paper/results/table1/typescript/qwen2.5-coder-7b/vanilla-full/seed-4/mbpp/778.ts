function pack_consecutive_duplicates(list1: any[]): any[][] { 
    return list1.reduce((acc, ele, i) => {
        if (i === 0 || ele !== acc[acc.length - 1][0]) {
            acc.push([ele]);
        } else {
            acc[acc.length - 1].push(ele);
        }
        return acc;
    }, []);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
