
function sum_list(lst1: number[], lst2: number[]): number[] {
    if (lst1.length !== lst2.length) {
        throw new Error('Input lists must be of the same length');
    }
    return lst1.reduce((sums: number[], num: number, i: number) => {
        sums.push(num + lst2[i]);
        return sums;
    }, []);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function takes as input two arrays [a_1,...,a_n], [b_1,...,b_n] and returns [a_1+b_1,...,a_n+b_n].
