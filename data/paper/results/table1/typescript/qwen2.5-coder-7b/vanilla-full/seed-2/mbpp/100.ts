function next_smallest_palindrome(num: number): number { 
    let next = num + 1;
    while (!is_palindrome(next)) {
        next++;
    }
    return next;
}

function is_palindrome(n: number): boolean {
    let str = n.toString();
    let left = 0, right = str.length - 1;
    while (left < right) {
        if (str[left] !== str[right]) {
            return false;
        }
        left++;
        right--;
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
