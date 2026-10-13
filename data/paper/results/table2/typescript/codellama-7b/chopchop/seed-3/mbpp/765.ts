
function is_polite(n: number): number {
  if(n < 10) {
    return 1;
  }
  const str: number = n % 10;
  const flo: number = Math.floor(n / 10);
  return (str === 0 || str === 2 || str === 5 || str === 7) && is_polite(flo) === 1 ? 1 : 0;
}

function polite_number(n: number): number {
  let count: number = 0;
  while(count < n) {
    count++;
    if(is_polite(count) === 1) {
      return count;
    }
  }
  return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
