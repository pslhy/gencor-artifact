
function sequence(n: number): number {
    let newmanConwaySequence: number = -1;
    let newmanConwayArray: number = newmanConwaySequence;
    for (let i = 0; i <= n; i++) {
        newmanConwaySequence = 0;
        if (newmanConwayArray === -1) {
            newmanConwayArray = 1;
            newmanConwaySequence = newmanConwayArray;
        } 
        else if (newmanConwayArray === 0) {
            newmanConwayArray = 1;
            newmanConwaySequence = newmanConwayArray;
        } 
        else {
            newmanConwaySequence = newmanConwayArray + newmanConwaySequence;
            newmanConwayArray = newmanConwaySequence;
        }
    }
    return newmanConwaySequence;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.
