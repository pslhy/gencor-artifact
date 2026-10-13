
function dif_Square(n: number): boolean {
  const x = Math.floor(Math.sqrt(n))
  // checks if x is perfect square or not
  // if not, return false
  // else find y
  // return true if y is perfect square otherwise false
  // double check if y is perfect square
  // return true if it is, otherwise false
  // create array of squares
  // iterate through array and find square 
  // return true;
  // return false;

  // return should be in else statement if statement not executed
  // if statements should be indented
  // if making any changes consider double checking to make sure your solution is accurate
  // this is a good practice to look out for more among other solutions
  // if number is between 2 and 10 need to look for perfect square
  // if number is an odd value less than 10 check the last digit is 5
  // if number is an odd number exactly 10 check last digit is 5
  //  otherwise they cannot be represented as difference of two squares
  // if a number is negative or positive while being an even number get the absolute value
  // get the square root of the absolute value of the number and round up
  // return true if the square root is an integer otherwise false
  // overall complexity is O(N) 

  // this solution has the space and time complexity of O(N)
  // this is because we don't have a limit on the loops
  // we also don't use any arrays as memory which encourages TS to choose O notation
  // another gcc version describes O(N) at higher than the secret comments of this solution 
  // the time complexity of this solution is also O(N)
  // this is because we will check each number from 0 to n-1, which is the size of the set
  // we will break early if the number is found which will reduce the number of iterations needed
  // this does not affect the space complexity of this solution as we will only use arrays such as sets and objects
  // and we keep the arrays internal to this solution rather than exposing them this makes them O(1) constant time lookups
  // and this also depends on N as well in the worst case scenario where this solution will run infinitely
  // the space complexity of the chosen solution is O(n) this is due to the constant memory required for popping a 
  // portion of a stack which is n as well
  // this could potentially be O(1) if additional optimizations were made to the stack
  // this depends on the data size and structure as well
  // in the worst case O(n) space but O(1) might be possible with a clever reduction
  // to handle a failure of the one potential solution using a cycle while the above solution using at most
  // memory proportional to N does guarantee a printing of a palindrome at the expense of 
  // having a linear time complexity while the stack based memory decreases to constant in this case 
  // after making optimization i might try to reduce the time complexity further
  // but it will need a fact that more than one cycle will not be present in this solution
  // the timer complexity limits the n to an integer as such 
  // taking the product of n and N gives you n^N if n was an integer
  // however we don't have to think about non integers and have to solve this logically with the assumptions the integer part is present no decimal places
  // other solutions or solutions involving n vs N can get the product of n and N be O(infinity)
  // riddle i wrote about this concept was actually:
  // what is the operation that takes 2 inputs of O(n) complexity and a constant input returns O(1) output?
  // no answer can satisfy this question 
  // it basically dictates that it is mathematically impossible for such an operation to exist
  // where we cut away computational complexity after all terms were composed
  // i would assume that forcing a value of one would be the way to go about this
  // and i would argue the actual answer to the riddle is a string
  // a string with a property that it can be finite and have a complexity of O(1)
  // which only happens with the zero value which is the single truth of any language
  // the question dictates replacing a computing constant of n with another one which is mathematically irreversible
  // that would cause a cycle designation other than 1
  // thus only 1 satisfies the problem and is used as the upper and lower bound
  // an actual mathematical motivation to prove this is needed
  // programming isn't a math study plus n is outside the bounds of human life and complexity
  // when designing my solution i was  going to include removing redundant integer comparisons i choose not to because
  // this solusion meet implementation complexity requirements of being determined for the function parameters directly
  // from this question at this point
  // multidim

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as the difference of two squares or not.
