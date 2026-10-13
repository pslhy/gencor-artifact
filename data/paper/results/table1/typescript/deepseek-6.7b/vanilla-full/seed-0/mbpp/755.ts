function second_smallest(numbers: (number | number)[]): number | undefined {
    if(numbers.length < 2){
        return undefined;
    }
    
    let firstMin = Infinity;
    let secondMin = Infinity;
    
    for(let i=0; i<numbers.length; i++){
        if(numbers[i] < firstMin){
            secondMin = firstMin;
            firstMin = numbers[i];
        }else if(numbers[i] > firstMin && numbers[i] < secondMin){
            secondMin = numbers[i];
        }
    }
    return secondMin;
}

let arr = [7, -2, 3, 0, 9, -5];
console.log(second_smallest(arr)); // output: -2


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.
