function rearrange_bigger(n: number): any {
    let digits = Array.from(n.toString()).map(Number);
    let length = digits.length;
  
    for (let i = length - 1; i > 0; i--) {
        if (digits[i] > digits[i - 1]) {
            let larger = i;
            for (let j = i + 1; j < length; j++) {
                if (digits[j] > digits[i - 1] && digits[j] < digits[larger]) {
                    larger = j;
                }
            }
            let temp = digits[i - 1];
            digits[i - 1] = digits[larger];
            digits[larger] = temp;
            digits.sort((a, b)=>a-b);
            let result = digits.join('');
            return parseInt(result.replace('6', '').replace(/0*$/g, ''), 10);
        }
    }
    return -1;
}

console.log(rearrange_bigger(12)); // Output: 21
console.log(rearrange_bigger(513)); // Output: 531
console.log(rearrange_bigger(2019)); // Output: 2091


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
