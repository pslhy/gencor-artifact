
let rec sort_numeric_strings (nums_str : string list) : int list =
  let compare_func (a : string) (b : string) =
    let a_int = int_of_string a in
    let b_int = int_of_string b in
    if a_int = b_int then 0 else if a_int < b_int then -1 else 1
  in
  List.sort compare_func nums_str

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)
