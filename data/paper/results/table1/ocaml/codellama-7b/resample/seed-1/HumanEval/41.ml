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
  let left_cars = List.init n (fun x -> x) in
  let right_cars = List.init n (fun x -> x) in

  let rec left_movement (i : int) : unit =
    if i = n then () else (
      Console.write_line (left_cars.(i) ^ " moving left to right");
      left_cars.(i) <- left_cars.(i) + 1;
      right_movement (i + 1);
    )
  and right_movement (i : int) : unit =
    if i = n then () else (
      Console.write_line (right_cars.(i) ^ " moving right to left");
      right_cars.(i) <- right_cars.(i) + 1;
      left_movement (i + 1);
    )
  in

  let rec collide (i : int) : unit =
    if i = n then () else (
      let left_car = left_cars.(i) in
      let right_car = right_cars.(i) in
      if left_car > right_car then (
        Console.write_line (left_car ^ " and " ^ right_car ^ " collide.");
        collide (i + 1)
      ) else
        collide (i + 1);
    )
  in

  let result = ref 0 in
  left_movement 0;
  right_movement 0;
  collide 0;
  !result

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:7: Unbound module "Console" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec car_race_collision (n : int) : int =
  let left_cars = List.init n (fun x -> x) in
  let right_cars = List.init n (fun x -> x) in

  let rec left_movement (i : int) : unit =
    if i = n then () else (
      Printf.printf "%d moving left to right\n" left_cars.(i);
      left_cars.(i) <- left_cars.(i) + 1;
      right_movement (i + 1);
    )
  and right_movement (i : int) : unit =
    if i = n then () else (
      Printf.printf "%d moving right to left\n" right_cars.(i);
      right_cars.(i) <- right_cars.(i) + 1;
      left_movement (i + 1);
    )
  in

  let rec collide (i : int) : unit =
    if i = n then () else (
      let left_car = left_cars.(i) in
      let right_car = right_cars.(i) in
      if left_car > right_car then (
        Printf.printf "%d and %d collide.\n" left_car right_car;
        collide (i + 1)
      ) else
        collide (i + 1);
    )
  in

  let result = ref 0 in
  left_movement 0;
  right_movement 0;
  collide 0;
  !result

