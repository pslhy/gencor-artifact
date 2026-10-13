
function dog_age(h_age: number): number { 
    let d_age: number = 0;
    if(h_age <= 0) {
        d_age = 0;
    }
    else if(h_age <= 2) {
        d_age = h_age * 10.5;
    }
    else {
        d_age = 21 + (h_age - 2) * 4;
    }
    return d_age;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate a dog's age in dog's years.
