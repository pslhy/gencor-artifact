
function dog_age(h_age: number): number {
    let dog_age = 0;
    
    if (h_age === 1) {
        dog_age = 15;
    } else if (h_age === 2) {
        dog_age = 24;
    } else if (h_age > 2) {
        dog_age = 24 + (h_age-2)*5;
    }

    return dog_age;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate a dog's age in dog's years.
