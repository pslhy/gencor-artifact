function is_equal_to_sum_even(n: number): boolean {
    let i = 2;
    while (i <= n/2) {
        if (n % i === 0) {
            let j = i + 1;
            while (j <= n/2) {
                if (n % j === 0) {
                    let k = j + 1;
                    while (k <= n/2) {
                        if (n % k === 0) {
                            let l = k + 1;
                            while (l <= n/2) {
                                if (n % l === 0) {
                                    return true;
                                }
                                l++;
                            }
                            k++;
                        }
                        j++;
                    }
                    j++;
                }
                j++;
            }
            i++;
        }
        i++;
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
//     Example
//     >>> is_equal_to_sum_even(4)
//     false
//     >>> is_equal_to_sum_even(6)
//     false
//     >>> is_equal_to_sum_even(8)
//     true
