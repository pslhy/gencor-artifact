function group_tuples(Input: string[][]): string[][] {
    const tuple_lengths: number[] = Input.map(tuple => tuple.length);
    const max_length: number = Math.max(...tuple_lengths);
    const result: string[][] = [];
    for (let i = 0; i < max_length; i++) {
        const elems_at_pos_i: string[] = [];
        for (let j = 0; j < Input.length; j++) {
            if (Input[j].length > i) {
                elems_at_pos_i.push(Input[j][i]);
            }
        }
        result.push(elems_at_pos_i);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
