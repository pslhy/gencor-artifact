function rotate_right(list: number[], m: number): number[] { 
    m = m % list.length; 
    let n = list.length; 
    reverse(list, 0, n - 1);  
    reverse(list, 0, m - 1);  
    reverse(list, m, n - 1);     
    return list; 
} 

function reverse(list: number[], start: number, end: number): void {  
    let temp: number = 0;           
    while (start < end) { 
        temp = list[start];  
        list[start] = list[end]; 
        list[end] = temp;     
        start++;  
        end--;  
    } 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to rotate a given array by specified number of items to the right direction. https://www.geeksforgeeks.org/tsthon-program-right-rotate-array-n/
