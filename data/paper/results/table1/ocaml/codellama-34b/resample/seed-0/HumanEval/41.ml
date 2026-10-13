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
  if n <= 0 then 0
  else if n = 1 then 1
  else
    let left_to_right_cars = car_race_collision (n - 1) in
    let right_to_left_cars = car_race_collision (n - 2) in
    left_to_right_cars + right_to_left_cars

