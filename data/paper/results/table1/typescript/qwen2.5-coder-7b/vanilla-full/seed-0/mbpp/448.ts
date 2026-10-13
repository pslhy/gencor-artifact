function cal_sum(n: number): number { 
    let f1 = 3, f2 = 0, f3 = 2, f4 = 2, sumOfSeries = 5; 
    if (n == 1) return f1; 
    else if (n == 2) return f1 + f2; 
    else if (n == 3) return f1 + f2 + f3; 
    else { 
        n = n - 3; 
        while (n >= 1) { 
            f4 = f1 + f2; 
            f1 = f2; 
            f2 = f3; 
            f3 = f4; 
            sumOfSeries = sumOfSeries + f3; 
            n--; 
        } 
    } 
    return sumOfSeries; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
