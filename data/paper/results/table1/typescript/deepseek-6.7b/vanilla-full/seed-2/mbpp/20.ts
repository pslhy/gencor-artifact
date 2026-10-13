function is_woodall(x: number): boolean {
    let sum = 0;
    let product = 1;
    let num = x.toString();
  
    for (let i = 0; i < num.length; i += 2) {
        sum += parseInt(num[i]) + parseInt(num[i+1]);
        product *= parseInt(num[i]) + parseInt(num[i+1]);
    }
  
    return (sum == product);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
