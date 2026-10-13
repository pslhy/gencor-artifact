function newman_prime(n: number): number {
   if (n <= 1) {
       return 2;
   }
   var prime = 3;
   var count = 1;
   while (count < n) {
       prime += 2;
       var is_prime = true;
       for (var i = 3; i * i <= prime ; i += 2) {
           if (prime % i == 0) {
               is_prime = false;
               break;
           }
       }
       if (is_prime) {
           count++;
       }
   }
   return prime;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
