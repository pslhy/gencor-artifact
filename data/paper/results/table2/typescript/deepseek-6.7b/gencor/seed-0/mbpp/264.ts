
function dog_age(h_age: number): number {
    if(h_age <= 2) {
        return h_age * 10.5;
    } else {
        let initialAge = 21;
        let remainingAge = h_age - 2;
        let extraDogYears = remainingAge * 4;
        return initialAge + extraDogYears;
    }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate a dog's age in dog's years.
