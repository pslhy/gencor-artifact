(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list arr of integers, find the minimum number of elements that *)
(*     need to be changed to make the list palindromic. A palindromic list is a list that *)
(*     is read the same backwards and forwards. In one change, you can change one element to any other element. *)
(*     For example: *)
(*     >>> smallest_change [1; 2; 3; 5; 4; 7; 9; 6] *)
(*     4 *)
(*     >>> smallest_change [1; 2; 3; 4; 3; 2; 2] *)
(*     1 *)
(*     >>> smallest_change [1; 2; 3; 2; 1] *)
(*     0 *)
let rec smallest_change (arr : int list) : int = 
  let rec helper (lst : int list) (acc : int) : int = 
    match lst with 
    | [] | [_] -> acc
    | x::y::rest -> 
      if x = List.last rest then helper (y::rest) acc
      else helper (y::rest) (acc + 1)
  in helper arr 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:14: Unbound value "List.last" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec smallest_change (arr : int list) : int = 
  let rec helper (lst : int list) (acc : int) : int = 
    match lst with 
    | [] | [_] -> acc
    | x::y::rest -> 
      if x = List.hd (List.rev rest) then helper (y::rest) acc
      else helper (y::rest) (acc + 1)
  in helper arr 0

