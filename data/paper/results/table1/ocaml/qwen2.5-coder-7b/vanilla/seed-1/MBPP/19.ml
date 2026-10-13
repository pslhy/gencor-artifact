let rec test_duplicate (arraynums : int list) : bool = 
  match arraynums with
  | [] | [_] -> false
  | h::t -> if List.mem h t then true else test_duplicate t;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find whether a given list of integers contains any duplicate element. *)
