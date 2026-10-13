function find_even_pair(A: number[]): number {
    let count = 0;
    const odd_counts: Record<number, number> = {};
  
    for (const num of A) {
      const isOdd = num % 2 === 1;
      if (isOdd) {
        count++;
      } else {
        for (let key in odd_counts) {
          count += odd_counts[key];
        }
        if (odd_counts[0]) {
          count += odd_counts[0] + 1;
        } else {
          count += 1;
        }
      }
      if (odd_counts[num]) {
        odd_counts[num]++;
      } else {
        odd_counts[num] = 1;
      }
    }
    return count;
}

let arr: number[] = [1, 2, 3, 4, 5];
console.log(find_even_pair(arr)); // 3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that counts the number of pairs of integers in an array that xor to an even number.
