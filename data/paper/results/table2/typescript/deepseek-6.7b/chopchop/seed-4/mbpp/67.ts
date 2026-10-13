
function bell_number(n: number): number {
    let bell: number = 0;
    let bellTable: number = (n + 1) * (n + 2) / 2;
    let partition: number = 0;

    let bell_triangle: number = bellTable;

    for (let row = 0; row < n; row++) {
        partition += bell_triangle;
        for (let column = 0; column < n; column++) {
            if (row > column && bell_triangle % 2 === 1) {
                bell_triangle += (row - column - 1) * bell_triangle;
            }
            bell_triangle = Math.floor(bell_triangle / (column + 2));
        }
    }
    return partition;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
