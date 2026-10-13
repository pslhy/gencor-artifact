function even_odd_count(num: number): [number, number] {
    let even = 0;
    let odd = 0;
    const digits = Math.abs(num).toString().split('');
    digits.forEach((digit) => {
        if (parseInt(digit) % 2 === 0) {
            even++;
        } else {
            odd++;
        }
    });
    return [even, odd];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an integer. return an array that has the number of even and odd digits respectively.
//     Example:
//     >>> even_odd_count(-12)
//     [1, 1]
//     >>> even_odd_count(123)
//     [1, 2]
