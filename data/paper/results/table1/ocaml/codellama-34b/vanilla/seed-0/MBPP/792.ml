let rec count_list (input_list : int list list) : int =
  match input_list with
  | [] -> 0
  | hd :: tl -> 1 + count_list tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of lists in a given number of lists. *)
