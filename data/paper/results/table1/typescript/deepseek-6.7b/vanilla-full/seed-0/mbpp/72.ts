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
console.log(dif_Square(5));  // true (5 = 1^2 + 2^2)
console.log(dif_Square(12)); // true (12 = 2^2 + 3^2)
console.log(dif_Square(20)); // true (20 = 4^2 + 4^2)
console.log(dif_Square(21)); // false
console.log(dif_Square(35)); // true (35 = 2^2 + 5^2)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as the difference of two squares or not.
