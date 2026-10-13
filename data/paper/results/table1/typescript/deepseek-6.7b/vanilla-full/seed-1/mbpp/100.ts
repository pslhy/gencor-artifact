function next_smallest_palindrome(num: number): number {
    if(num < 10) 
        return num + 1;
    
    let numStr = String(num);
    let length = numStr.length;
    let high = Math.floor(numStr.substring(0, Math.floor((length + 1) / 2)));
    let low = numStr.substring(Math.floor(length / 2));
    
    if(high !== low.split('').reverse().join(''))
        return -1; // No possible smaller palindrome
    
    let firstHalf = high;
    let secondHalf = low;
    
    if(length % 2 !== 0)
        secondHalf = low.split('').reverse().join('').slice(1);
    else
        secondHalf = low.split('').reverse().join('');
    
    if(firstHalf[0] === '9' && firstHalf.length > 1)
        return Number(firstHalf.substring(0, firstHalf.length - 1) + '9');

    return Number(firstHalf + secondHalf);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
