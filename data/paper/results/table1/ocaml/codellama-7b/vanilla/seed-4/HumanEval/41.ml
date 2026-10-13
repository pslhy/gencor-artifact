let rec car_race_collision (n : int) : int =
  if n = 1 then
    0
  else
    let (left_car_movement, right_car_movement) =
      ((-) n 2, n) in
    let (left_collide, right_collide) =
      ((=), (=)) in
    let (left_distance, right_distance) =
      (left_car_movement + n, right_car_movement) in
    let (left_movement, right_movement) =
      (left_distance - left_collide, right_distance - right_collide) in
    ((* Collision occurs if the two cars meet the criteria for collision. *))
    left_movement + right_movement

let () =
  let (left_distance, right_distance) =
    (5, 5) in
  let (n, m) =
    (left_distance, right_distance) in
  print_endline (string_of_int (car_race_collision (n + m)))



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Imagine a road that's a perfectly straight infinitely long line. *)
(*     n cars are driving left to right;  simultaneously, a different set of n cars *)
(*     are driving right to left.   The two sets of cars start out being very far from *)
(*     each other.  All cars move in the same speed.  Two cars are said to collide *)
(*     when a car that's moving left to right hits a car that's moving right to left. *)
(*     However, the cars are infinitely sturdy and strong; as a result, they continue moving *)
(*     in their trajectory as if they did not collide. *)
(*     This function outputs the number of such collisions. *)
