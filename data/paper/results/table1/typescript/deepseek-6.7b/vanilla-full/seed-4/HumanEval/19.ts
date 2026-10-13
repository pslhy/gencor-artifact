function sort_numbers(numbers: string): string {
    const numToWordList = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];
    const wordToNumList = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];

    return numbers.split(' ').sort(function(a, b) {
        return numToWordList.indexOf(a) - numToWordList.indexOf(b);
    }).join(' ');
}

console.log(sort_numbers("three one five")); // one three five


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Input is a space-delimited string of numberals from 'zero' to 'nine'.
//     Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
//     Return the string with numbers sorted from smallest to largest
//     >>> sort_numbers("three one five")
//     "one three five"
