function car_race_collision(n: number): number {
    let left_to_right_cars = 0;
    let right_to_left_cars = 0;
    let collisions = 0;
    while (left_to_right_cars < n && right_to_left_cars < n) {
        if (left_to_right_cars > right_to_left_cars) {
            collisions++;
            left_to_right_cars -= right_to_left_cars;
            right_to_left_cars = 0;
        } else {
            right_to_left_cars -= left_to_right_cars;
            left_to_right_cars = 0;
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
