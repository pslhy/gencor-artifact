function next_smallest_palindrome(num: number): number {
    const str = num.toString();
    const mid = Math.floor(str.length / 2);
    const start = str.substring(0, mid);
    const end = str.substring(mid, str.length - 1);

    if (start === end.split('').reverse().join('')) {
        return num;
    }

    const smaller_str = str.substring(0, mid - 1) + str[mid - 1];
    const larger_str = str[mid - 1] + str.substring(mid, str.length - 1);

    return parseInt(larger_str + smaller_str, 10);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
