function car_race_collision(n: number): number {
  let left_to_right = Array(n).fill(0);
  let right_to_left = Array(n).fill(0);

  for (let i = 1; i < Number.MAX_VALUE; i++) {
    left_to_right = left_to_right.map((x, j) => x + 1 / (i * (j + 1)));
    right_to_left = right_to_left.map((x, j) => x - 1 / (i * (j + 1)));

    let collisions = 0;
    for (let j = 0; j < n; j++) {
      if (left_to_right[j] < right_to_left[j]) {
        collisions++;
      }
    }

    return collisions;
}

let t1 = new Array(100);
let t2 = new Array(100);
t1.fill(new Array(n));
t2.fill(new Array(n));

function compute_t(t: number, n1: number, n2: number): number {
    // Precompute t1 and t2.
    for (let i = 0; i < n1; i++) {
        t1[i] = i;
    }
    for (let i = 0; i < n2; i++) {
        t2[i] = i;
    }

    return (t1.map((x, i) => x - t2[i]).map(Math.abs).reduce((accumulator: number, currentValue: number) => accumulator + currentValue));
}

function compute_sum(n1: number, n2: number): number {
    // Precompute t1 and t2.
    for (let i = 0; i < n1; i++) {
        t1[i] = i;
    }
    for (let i = 0; i < n2; i++) {
        t2[i] = i;
    }

    return (t1.map((x, i) => x + t2[i]).reduce((accumulator: number, currentValue: number) => accumulator + currentValue));
}

let collisions = [];
for (let i = 0; i < 100; i++) {
    let t = i + 1;
    let x = compute_t(t, n, n);
    let y = compute_sum(n, n);

    if (x < y) {
        collisions.push(x);
    }
}

return collisions.length;
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