
let rec car_race_collision (n : int) : int =
  let left_cars = List.init n (fun x -> x) in
  let right_cars = List.init n (fun x -> x) in

  let rec left_movement (i : int) : unit =
    if i = n then () else (
      left_cars.(i) <- left_cars.(i) + 1;
      left_movement (i + 1)
    )
  in

  let rec right_movement (i : int) : unit =
    if i = n then () else (
      right_cars.(i) <- right_cars.(i) + 1;
      right_movement (i + 1)
    )
  in

  left_movement 0;
  right_movement 0;

  let rec collide (i : int) : bool =
    if i = n then false else
    if left_cars.(i) = right_cars.(i) then true else
    if left_cars.(i) > right_cars.(i) then (
      right_cars.(i) <- right_cars.(i) + 1;
      collide (i + 1)
    ) else (
      left_cars.(i) <- left_cars.(i) + 1;
      collide (i + 1)
    )
  in

  if collide 0 then n else car_race_collision (n + 1)

let () =
  print_int (car_race_collision 1)

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
