function newman_prime(n: number): number {
  if(n < 1){
     return 0;
  }
  let x = 1;
  while(n > 1){
    x++;
    if(isPrime(x)){
      n--;
    }
  }
  return x;
 }
 
 function isPrime(n: number): number {
  if(n < 1){
    return 0;
  }
  for(let i = 2; i <= Math.sqrt(n); i++){
    if(n % i === 0){
      return 0;
    }
  }
  return 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
