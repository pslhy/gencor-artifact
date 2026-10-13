(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a non-empty list of positive integers. Return the greatest integer that is greater than *)
(*     zero, and has a frequency greater than or equal to the value of the integer itself. *)
(*     The frequency of an integer is the number of times it appears in the list. *)
(*     If no such a value exist, return -1. *)
(*     Examples: *)
(*     >>> search [4; 1; 2; 2; 3; 1] *)
(*     2 *)
(*     >>> search [1; 2; 2; 3; 3; 3; 4; 4; 4] *)
(*     3 *)
(*     >>> search [5; 5; 4; 4; 4] *)
(*     (-1) *)
let rec search (lst : int list) : int =
  let rec freq (n : int) (lst : int list) : int =
    match lst with
    | [] -> 0
    | hd::tl -> (if hd = n then 1 else 0) + freq n tl
  in
  let rec aux (lst : int list) : int =
    match lst with
    | [] -> -1
    | hd::tl -> max (freq hd lst) (aux tl)
  in
  if aux lst >= List.hd (List.sort_descending lst) then -1 else aux lst

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:26: Unbound value "List.sort_descending" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec search (lst : int list) : int =
  let rec freq (n : int) (lst : int list) : int =
    match lst with
    | [] -> 0
    | hd::tl -> (if hd = n then 1 else 0) + freq n tl
  in
  let rec aux (lst : int list) : int =
    match lst with
    | [] -> -1
    | hd::tl -> max hd (aux tl)
  in
  let max_val = aux lst in
  if freq max_val lst > max_val then max_val else -1

