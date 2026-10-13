function next_smallest_palindrome(num: number): number { 
    for (let i = num + 1; ; i++) { 
        let reverse_num = 0; 
        let temp = i; 
  
        while (temp > 0) { 
            reverse_num = reverse_num * 10 + temp % 10; 
            temp = Math.floor(temp / 10); 
        } 
  
        if (i === reverse_num) { 
            return i; 
        } 
    } 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
