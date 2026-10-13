function check_Consecutive(l: number[]): boolean {
    if(l.length < 2) {
        return false;
    }
    
    let sortedArray = l.slice().sort((a, b) => a - b);

    for(let i = 0; i < sortedArray.length - 1; i++) {
        if(sortedArray[i] + 1 !== sortedArray[i + 1]) {
            return false;
        }
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array contains consecutive numbers or not.
