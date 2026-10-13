function sequence(n: number): number {
    let newmanConwaySequence: number[] = [0, 1, 1];

    if (n <= 0) {
        throw new Error("Input number should be greater than 0");
    } 
    else if (n <= 3) {
        return newmanConwaySequence[n];
    } 
    else {
        for (let i = 4; i <= n; i++) {
            let newNum = newmanConwaySequence[newmanConwaySequence[i - 1]] 
                      + newmanConwaySequence[i - newmanConwaySequence[i - 1]];
            newmanConwaySequence.push(newNum);
        }
        return newmanConwaySequence[n];
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.
