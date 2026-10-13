function filter_integers(values: any[]): number[] {
    let integers: number[] = [];
    values.forEach(value => {
        if (typeof value === "number" && value % 1 === 0) {
            integers.push(value);
        }
    });
    return integers;
}

console.log(filter_integers(["a", 3.14, 5])); // [5]
console.log(filter_integers([1, 2, 3, "abc", {}, []])); // [1, 2, 3]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Filter given array of any tsthon values only for integers
//     >>> filter_integers(["a", 3.14, 5])
//     [5]
//     >>> filter_integers([1, 2, 3, "abc", {}, []])
//     [1, 2, 3]
