function find_Rotations(str: string): number { 
    let rotatedStr = str + str;
    for(let i = 1; i < str.length; i++) {
        let rotation = rotatedStr.substring(i, i + str.length);
        if(rotation === str) {
            return i;
        }
    }
    return str.length; // Return the original length if no rotation matches
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.
