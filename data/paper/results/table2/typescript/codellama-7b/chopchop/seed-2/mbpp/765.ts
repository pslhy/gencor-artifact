
function is_polite(n: number): number {
    let d = n % 10;
    let c = n % 100;
    let b = n % 1000;

    if (d == 1 && c != 11) {
        return 1;
    } else if ((d >= 2 && d <= 4) && b != 12 && b != 13 && b != 14) {
        return 1;
    } else {
        return 0;
    }
}

function nth_polite_number(n: number): number {
    let count = 1;
    let num = 1;
    while (count <= n) {
        num++;
        if (is_polite(num) == 1) {
            count++;
        }
    }
    return num - 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
