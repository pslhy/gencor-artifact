function car_race_collision(n: number): number {
  let leftToRight = 0;
  let rightToLeft = 0;

  while (leftToRight < n && rightToLeft < n) {
    if (leftToRight == rightToLeft) {
      leftToRight += 1;
      rightToLeft += 1;
    } else if (leftToRight > rightToLeft) {
      rightToLeft += 1;
    } else {
      leftToRight += 1;
    }
  }

  return leftToRight + rightToLeft;
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
