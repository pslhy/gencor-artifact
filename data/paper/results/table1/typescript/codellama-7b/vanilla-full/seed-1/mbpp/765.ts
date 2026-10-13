function is_polite(n: number): number {
    let str = n + '';
    let count = 0;

    for (let i = 0; i < str.length - 1; i++){
        if (str[i] !== '1') {
            count++;
        }
    }

    return count;
}

function nth_polite_number(n: number): number {
    let count = 1;
    let num = 1;
    let next_num = 2;

    while (count < n){
        next_num++;

        while (!is_polite(next_num)) {
            next_num++;
        }

        count++;
    }

    return next_num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
