function find_Rotations(str: string): number {
    let temp: string = str + str;
    let length: number = str.length;
    for(let i = 1; i <= length; i++) {
        if(temp.substring(i, i + length) === str) {
            return i;
        }
    }
    return length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.
