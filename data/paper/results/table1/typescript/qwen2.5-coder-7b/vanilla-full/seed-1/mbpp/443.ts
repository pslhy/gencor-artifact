function largest_neg(list1: number[]): number { 
    let largest: number | undefined = undefined; 
    for (let i = 0; i < list1.length; i++) { 
        if (list1[i] < 0) { 
            if (largest === undefined || list1[i] > largest) { 
                largest = list1[i]; 
            } 
        } 
    } 
    if (largest === undefined) { 
        throw new Error("No negative numbers found");
    } 
    return largest; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest negative number from the given array.
