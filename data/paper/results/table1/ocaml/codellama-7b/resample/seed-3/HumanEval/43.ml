(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     pairs_sum_to_zero takes a list of integers as an input. *)
(*     it returns true if there are two distinct elements in the list that *)
(*     sum to zero, and false otherwise. *)
(*     >>> pairs_sum_to_zero [1; 3; 5; 0] *)
(*     false *)
(*     >>> pairs_sum_to_zero [1; 3; (-2); 1] *)
(*     false *)
(*     >>> pairs_sum_to_zero [1; 2; 3; 7] *)
(*     false *)
(*     >>> pairs_sum_to_zero [2; 4; (-5); 3; 5; 7] *)
(*     true *)
(*     >>> pairs_sum_to_zero [1] *)
(*     false *)
let rec pairs_sum_to_zero (l : int list) : bool =
  match l with
  | [] -> false
  | x :: y :: _ when x = y -> false
  | x :: xs ->
    if x + y = 0 then
      true
    else
      pairs_sum_to_zero xs

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "y" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pairs_sum_to_zero (l : int list) : bool =
  match l with
  | [] -> false
  | x :: y :: _ ->
    if x + y = 0 then
      true
    else
      pairs_sum_to_zero (y :: l)

