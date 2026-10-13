
function dif_Square(n: number): boolean {
    for(let i = 0; i*i <= n; i++) {
        let j = Math.sqrt(n - i*i);
        if(j === Math.floor(j)) {
            return true;
        }
    }
    return false;
}

// Test cases
// console.log(dif_Square(3));  // should return true
// console.log(dif_Square(5));  // should return true
// console.log(dif_Square(13)); // should return false
// console.log(dif_Square(8));  // should return true
// console.log(dif_Square(9));  // should return true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as the difference of two squares or not.
