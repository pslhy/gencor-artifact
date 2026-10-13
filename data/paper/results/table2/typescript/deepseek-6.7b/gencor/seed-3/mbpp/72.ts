
function dif_Square(n: number): boolean {
    let b = false;
    for(let i=0; i*i<=n; i++) {
        let j = 0;
        while(j*j <= n) {
            if (i*i + j*j == n) {
                b = true;
                break;
            }
            j += 1;
        }
        if (b) {
            break;
        }
    }
    return b;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as the difference of two squares or not.
