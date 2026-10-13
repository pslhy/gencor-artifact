function are_equivalent(num1: number, num2: number): boolean {
  if(num1 < 1 || num2 < 1){
    return false;
  }
  const sum1: number = sumOfDivisors(num1);
  const sum2: number = sumOfDivisors(num2);
  return sum1 === sum2;
}

function sumOfDivisors(num: number): number{
  if(num < 1){
    return 0;
  }
  let sum: number = 0;
  for(let i = 1; i <= Math.sqrt(num); i++){
    if(num % i === 0){
      sum += i;
      if(num / i !== i){
        sum += num / i;
      }
    }
  }
  return sum;
}

console.log(are_equivalent(12, 18)); // true
console.log(are_equivalent(9, 25)); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to determine if the sum of the divisors of two integers are the same.
