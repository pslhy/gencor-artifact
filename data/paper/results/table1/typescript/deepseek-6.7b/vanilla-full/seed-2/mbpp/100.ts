function next_smallest_palindrome(num: number): number {
    while (true) {
        num--;
        if (isPalindrome(num.toString())) {
            return num;
        }
    }
}

function isPalindrome(str: string): boolean {
    let start = 0;
    let end = str.length - 1;
    while (start < end) {
        if (str.charAt(start) !== str.charAt(end)) {
            return false;
        }
        start++;
        end--;
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
