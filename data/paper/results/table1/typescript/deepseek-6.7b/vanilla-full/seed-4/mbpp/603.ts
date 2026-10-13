function get_ludic(n: number): number[] {
    let arr: number[] = [1, 3];

    let addNumber = (num: number) => {
        let next = num * 2;
        if (next > n) 
            return;
        arr.push(next);
        addNumber(next - 1);
        if (next + 2 <= n) 
            arr.push(next + 2);
        addNumber(next + 3);
    };

    addNumber(2);
    arr.sort((a, b) => a-b);
    return arr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
