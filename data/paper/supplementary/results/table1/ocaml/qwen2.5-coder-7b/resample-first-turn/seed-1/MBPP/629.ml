let rec split (list : int list) : int list = 
  List.split_even_odd list

let even_numbers (numbers : int list) : int list =
  fst (split numbers)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find even numbers from a list of numbers. *)
