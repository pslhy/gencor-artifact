
function first_non_repeating_character(str1: string): string | undefined {
    let arr = str1.split("");
    let i: number;
    let j: number;
    let count: number;
  
    for(i = 0; i < arr.length; i++){
        count = 0;
        for(j = i + 1; j < arr.length; j++){
            if(arr[i] === arr[j]){
                count++;
            }
        }
        if(count === 0){
            return arr[i];
        }
    }
    return undefined;
}

console.log(first_non_repeating_character("thequickbrownfox"));  // e
console.log(first_non_repeating_character("abcdabcefgh"));  // c

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.
