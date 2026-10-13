(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find even numbers from a list of numbers. *)
let rec split (list : int list) : int list = 
  List.split_even_odd list

let even_numbers (numbers : int list) : int list =
  fst (split numbers)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:3: Unbound value "List.split_even_odd" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split (list : int list) : int list = 
  List.filter (fun x -> x mod 2 = 0) list

let even_numbers (numbers : int list) : int list =
  split numbers

