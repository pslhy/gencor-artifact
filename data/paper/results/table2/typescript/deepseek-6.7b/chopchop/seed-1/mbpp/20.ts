
function is_woodall(x: number): boolean {
    let binary: number = x;
    let binary_rev: number = 0;
  
    while(binary !== 0) {
        let remainder: number = binary % 10;
        binary = Math.floor(binary / 10);
        binary_rev = binary_rev * 10 + remainder;
    }
  
    if(x === binary_rev) {
       return true;
    } else {
       return false;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
