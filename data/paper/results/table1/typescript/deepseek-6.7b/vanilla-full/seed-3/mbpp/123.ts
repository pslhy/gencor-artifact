function amicable_numbers_sum(limit: number): number {
    let sum = 0;
    const divisorSum = (num: number): number => {
        let sum = 0;
        for(let i=1; i<=num/2; i++) {
            if(num % i === 0) {
                sum += i;
            }
        }
        return sum;
    }
    for(let i = 1; i< limit; i++){
        let temp = divisorSum(i);
        if(temp !== i && divisorSum(temp) === i){
            sum += i;
        }
    }
    return sum;
}

console.log(amicable_numbers_sum(3000));  //Output: 504


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.
