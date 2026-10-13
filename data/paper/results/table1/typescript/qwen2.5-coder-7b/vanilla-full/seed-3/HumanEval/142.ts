function sum_squares(lst: number[]): number {
    return lst.map((num, index) => {
        if (index % 3 === 0) {
            return Math.pow(num, 2);
        } else if (index % 4 === 0 && index % 3 !== 0) {
            return Math.pow(num, 3);
        }
        return num;
    }).reduce((acc, curr) => acc + curr, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     "
//     This function will take an array of integers. For all entries in the array, the function shall square the integer entry if its index is a
//     multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not
//     change the entries in the array whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries.
//     Examples:
//     >>> lst
//     [1, 2, 3]
//     >>> lst
//     []
//     >>> lst
//     [-1, -5, 2, -1, -5]
