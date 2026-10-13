function fruit_distribution(s: string, n: number): number {
    let mangoCount = 0;
    let appleCount = 0;
    let orangeCount = 0;

    // extract the numbers from the string
    let numbers = s.split(" ");
    appleCount = parseInt(numbers[0]);
    orangeCount = parseInt(numbers[2]);

    // calculate the number of mango fruits
    mangoCount = n - (appleCount + orangeCount);

    return mangoCount;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     In this task, you will be given a string that represents a number of apples and oranges
//     that are distributed in a basket of fruit this basket contains
//     apples, oranges, and mango fruits. Given the string that represents the total number of
//     the oranges and apples and an integer that represent the total number of the fruits
//     in the basket return the number of the mango fruits in the basket.
//     for examble:
//     >>> fruit_distribution("5 apples and 6 oranges", 19)
//     8
//     >>> fruit_distribution("0 apples and 1 oranges", 3)
//     2
//     >>> fruit_distribution("2 apples and 3 oranges", 100)
//     95
//     >>> fruit_distribution("100 apples and 1 oranges", 120)
//     19
