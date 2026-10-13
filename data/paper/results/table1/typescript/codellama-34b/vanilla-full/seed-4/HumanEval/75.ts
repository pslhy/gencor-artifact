function is_multiply_prime(a: number): boolean {
   if (a < 100) {
       for ( let i = 2; i < a; i++){
           if (a % i == 0 && is_prime(i) && is_prime(a/i)){
               return true;
           }
       }
   }
   return false;
}
function is_prime(n:number):boolean{
   if ( n < 2 ) return false;
   for (let i = 2; i < n ; i++){
       if (n % i == 0) return false;
   }
   return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns true if the given number is the multiplication of 3 prime numbers
//     and false otherwise.
//     Knowing that (a) is less then 100.
//     Example:
//     >>> is_multiply_prime(30)
//     true
//     30 = 2 * 3 * 5
