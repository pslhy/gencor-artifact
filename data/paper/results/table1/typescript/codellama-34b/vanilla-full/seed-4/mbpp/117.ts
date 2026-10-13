function list_to_float(test_list: [string, string][]): [number, number][] {
   let float_list: [number, number] = [];
    for (let [a, b] of test_list) {
        var num1 = Number(a);
        var num2 = Number(b);
        if (Number.isNaN(num1) || Number.isNaN(num2)) {
            continue;
        } else {
            float_list.push([num1, num2]);
        }
    }
return float_list;
};

console.log(list_to_float([
	['1.23', '-123'],
	['0.12', '123'],
	['-0.1234', '-0.123']
]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert all possible convertible elements in an array of arrays to floats.
