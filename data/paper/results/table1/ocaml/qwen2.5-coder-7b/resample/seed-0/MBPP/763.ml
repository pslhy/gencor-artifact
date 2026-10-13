(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
let rec find_min_diff (arr : int list) (n : int) : int = 
  if n <= 1 then Sys.exit 1;
  let sorted_arr = List.sort compare arr in
  let rec min_diff acc lst = 
    match lst with
    | [] | [_] -> acc
    | x :: y :: tail -> min_diff (min acc (y - x)) (y :: tail)
  in
  min_diff max_int sorted_arr

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:18: Unbound value "Sys.exit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_min_diff (arr : int list) (n : int) : int = 
  if n <= 1 then invalid_arg "Array must contain more than one element";
  let sorted_arr = List.sort compare arr in
  let rec min_diff acc lst = 
    match lst with
    | [] | [_] -> acc
    | x :: y :: tail -> min_diff (min acc (y - x)) (y :: tail)
  in
  min_diff max_int sorted_arr

