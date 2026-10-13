function pack_consecutive_duplicates(list1: any[]): any[][] {
    let output: any[][] = [];
    for (let i = 0; i < list1.length; i++) {
        let current = list1[i];
        let count = 1;
        while (i < list1.length - 1 && list1[i] === current) {
            count++;
            i++;
        }
        output.push([current, count]);
    }
    return output;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
