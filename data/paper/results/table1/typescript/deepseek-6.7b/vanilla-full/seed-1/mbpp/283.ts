function validate(n: number): boolean {
    const digits = n.toString().split("").map(Number);
    const counts = Array.from({length: 10}, () => 0); // initialize the count array

    for(let digit of digits) {
        if(digit > 9 || digit < 0) {
            return false;
        }
        counts[digit]++;
        if(counts[digit] > digit) {
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
