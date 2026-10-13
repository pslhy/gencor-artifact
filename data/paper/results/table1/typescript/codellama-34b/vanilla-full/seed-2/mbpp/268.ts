function find_star_num(n: number): number {
    let count = 1;
    for (let i = 1; i < n; i++) {
        if (is_star(i)) {
            count++;
        }
    }
    return count;
}

function is_star(num: number): boolean {
    let temp = num;
    while (temp > 0) {
        if (temp % 10 === 1) {
            return true;
        }
        temp = Math.floor(temp / 10);
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th star number.
