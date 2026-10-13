(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Imagine a road that's a perfectly straight infinitely long line. *)
(*     n cars are driving left to right;  simultaneously, a different set of n cars *)
(*     are driving right to left.   The two sets of cars start out being very far from *)
(*     each other.  All cars move in the same speed.  Two cars are said to collide *)
(*     when a car that's moving left to right hits a car that's moving right to left. *)
(*     However, the cars are infinitely sturdy and strong; as a result, they continue moving *)
(*     in their trajectory as if they did not collide. *)
(*     This function outputs the number of such collisions. *)
let rec car_race_collision (n : int) : int =
    (* Define a function to compute the number of collisions for n cars *)
    let rec helper (left_set : int list) (right_set : int list) (collisions : int) : int =
        (* Define a helper function to compute the number of collisions for a given left and right set of cars *)
        match (left_set, right_set) with
        (* If both sets of cars are empty, return the number of collisions *)
        | ([], []) -> collisions
        (* If the left set is empty, return the number of collisions *)
        | ([], x :: _) -> collisions
        (* If the right set is empty, return the number of collisions *)
        | (x :: _, []) -> collisions
        (* If the left car is equal to the right car, there is a collision and we add one to the number of collisions *)
        | (x :: _, x :: _) when x = List.hd right_set -> helper left_set (List.tl right_set) (collisions + 1)
        (* Otherwise, there is no collision and we continue to the next pair of cars *)
        | (x :: _, y :: _) -> helper left_set (List.tl right_set) collisions
    (* Call the helper function with two empty lists for the left and right sets and 0 for the number of collisions *)
    in helper [] [] 0

