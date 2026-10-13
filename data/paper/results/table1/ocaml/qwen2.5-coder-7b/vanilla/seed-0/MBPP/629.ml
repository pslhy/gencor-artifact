let rec split (list : int list) : int list = 
  let is_even n = n mod 2 = 0 in
  List.filter is_even list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find even numbers from a list of numbers. *)
