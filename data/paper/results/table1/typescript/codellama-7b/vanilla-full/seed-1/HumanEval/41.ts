function car_race_collision(n: number): number {
    let left_cars = new Array(n);
    let right_cars = new Array(n);

    for (let i = 0; i < n; i++) {
        left_cars[i] = { position: i };
        right_cars[i] = { position: i };
    }

    let left_idx = 0;
    let right_idx = n - 1;
    let collisions = 0;

    while (left_idx < n && right_idx >= 0) {
        let left_car = left_cars[left_idx];
        let right_car = right_cars[right_idx];

        if (left_car.position < right_car.position) {
            left_idx++;
        } else if (left_car.position > right_car.position) {
            right_idx--;
        } else {
            collisions++;
            left_idx++;
            right_idx--;
        }
    }

    return collisions;
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
