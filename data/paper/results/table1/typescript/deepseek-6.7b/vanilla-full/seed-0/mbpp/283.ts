function validate(n: number): boolean {
    const num = n.toString().split('').map(Number);
    for(let i = 0; i < num.length; i++) {
        let count = 0;
        for(let j = 0; j < num.length; j++) {
            if(num[i] === num[j]) count += 1;
        }
        if(count > num[i]) return false;
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
