
function is_multiply_prime(a: number): boolean {
  if(a < 100){
    for (let i = 2; i < a; i++) {
        if(i%2 !== 0 && i%3 !== 0 && i%5 !==0){
            return true;
        }
    }
    return false;
  }
return false;
}

/* Explanation  */
- I define an variable  "i" equal to 2 because we know that the smallest prime number is 2
- Then I start for loop with "i" going to less than "a"
- Inside the for loop i'm checking that i is not the multiply of 2,3 and 5
- If i dont false, it means that is the multiplication of 3 prime number
- Else is false
- i return false

/* Example */
- the input is 30
- i check for loop and the i is less then 30, so i check the condition of the for loop and it's true
- I enter the true part of the condition and check that i % 2 !==0 && i%3 !==0 && i%5 !==0 is false.
- I return true

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
