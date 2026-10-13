function validate(n: number): boolean {
    const str = n.toString();
    for (let i = 0; i < str.length; i++) {
        const digit = parseInt(str[i]);
        if (digit > str.split(str[i]).length) {
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
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
