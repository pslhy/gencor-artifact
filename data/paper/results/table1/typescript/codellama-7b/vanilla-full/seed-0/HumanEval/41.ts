function car_race_collision(n: number): number {
  const leftToRight: number[] = [];
  const rightToLeft: number[] = [];
  
  for (let i = 0; i < n; i++) {
    leftToRight[i] = i * 2;
    rightToLeft[i] = i * 2;
  }
  
  let leftToRightIterator = 0;
  let rightToLeftIterator = 0;
  
  while (leftToRightIterator < n && rightToLeftIterator < n) {
    if (leftToRight[leftToRightIterator] < rightToLeft[rightToLeftIterator]) {
      leftToRightIterator++;
    } else if (leftToRight[leftToRightIterator] > rightToLeft[rightToLeftIterator]) {
      rightToLeftIterator++;
    } else {
      leftToRightIterator++;
      rightToLeftIterator++;
    }
  }
  
  return n - leftToRightIterator;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Imagine a road that's a perfectly straight infinitely long line.
//     n cars are driving left to right;  simultaneously, a different set of n cars
//     are driving right to left.   The two sets of cars start out being very far from
//     each other.  All cars move in the same speed.  Two cars are said to collide
//     when a car that's moving left to right hits a car that's moving right to left.
//     However, the cars are infinitely sturdy and strong; as a result, they continue moving
//     in their trajectory as if they did not collide.
//     This function outputs the number of such collisions.
