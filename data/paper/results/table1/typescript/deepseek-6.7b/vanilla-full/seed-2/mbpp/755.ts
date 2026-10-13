function second_smallest(numbers: (number | number)[]): number | undefined {
    let firstMin, secondMin;

    if (numbers.length < 2) {
        return undefined;
    }
    else if (numbers.length === 2) {
        return numbers[1];
    }
    else {
        if (numbers[0] < numbers[1]) {
            firstMin = numbers[0];
            secondMin = numbers[1];
        } else {
            firstMin = numbers[1];
            secondMin = numbers[0];
        }
    }
    
    for (let i = 2; i < numbers.length; i++) {
        if (numbers[i] < firstMin) {
            secondMin = firstMin;
            firstMin = numbers[i];
        } else if (numbers[i] < secondMin && numbers[i] !== firstMin) {
            secondMin = numbers[i];
        }
    }

    if (firstMin === secondMin) {
        return undefined;
    }
    
    return secondMin;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.
