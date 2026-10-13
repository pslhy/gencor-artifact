function get_equal(Input: number[][]): boolean {
    let equal = true;
    for (let i = 0; i < Input.length; i++) {
        if (Input[i].length !== Input[0].length) {
            equal = false;
            break;
        }
    }
    return equal;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether all the given arrays have equal length or not.
