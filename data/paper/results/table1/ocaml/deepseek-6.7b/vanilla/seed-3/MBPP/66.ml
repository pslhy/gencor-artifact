let rec pos_count (list : int list) : int =
  match list with
  | [] -> 0
  | x :: xs -> if x > 0 then 1 + pos_count xs else pos_count xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of positive numbers in a list. *)
