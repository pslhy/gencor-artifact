function dog_age(h_age: number): number { 
    // Check if the input age is valid
    if(h_age < 0) {
        return 'Invalid Input: Age cannot be negative';
    } else if(h_age <= 2) {
        // For the first two years, a dog year is equal to 10.5 human years
        return h_age * 10.5;
    } else {
        // After two years, each dog year is equal to 4 human years
        return 21 + (h_age - 2) * 4;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate a dog's age in dog's years.
