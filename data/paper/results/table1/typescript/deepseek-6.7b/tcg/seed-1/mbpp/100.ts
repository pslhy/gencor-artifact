function next_smallest_palindrome(num: number): number {
    if(num < 10) 
        return num + 1;
    
    let numStr = String(num + 1).toString();
    let len = numStr.length;
   
    while(!isNaN(Number(numStr)) && !isNaN(Number(numStr.split('').reverse().join(''))) && numStr !== numStr.split('').reverse().join('') && Number(numStr) <= num) {
        num++;
        numStr = String(num).toString();
    } 
   
    return Number(numStr);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.