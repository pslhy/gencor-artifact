function median_trapezium(base1: number, base2: number, height: number): number {
    if(base1 > 0 && base2 > 0 && height > 0) {
        let median = (base1 + base2) / 2;
        return median * height;
    } else {
        throw new Error("Inputs should be positive numbers");
    }
}

// example usage:
// console.log(median_trapezium(10, 20, 3));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median length of a trapezium.
