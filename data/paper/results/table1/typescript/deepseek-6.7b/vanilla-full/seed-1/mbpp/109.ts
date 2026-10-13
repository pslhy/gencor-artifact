function odd_Equivalent(s: string, n: number): number {
    let binary = s.split('').map(Number);
    let length = binary.length;
    let flipped = 0;
    let flippedOdds = 0;

    function checkFlip(index: number) {
        let count = index + (n % length);
        if (binary[count % length] == 1) {
            flippedOdds++;
        }
    }

    for (let i = 0; i < length; i++) {
        if (binary[i] == 1) {
            flipped++;
            checkFlip(i);
        }
    }

    flipped = Math.floor(flipped / 2);
    flippedOdds = Math.floor(flippedOdds / 2);

    return flipped + (flipped % 2 === 0 ? flippedOdds : 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
