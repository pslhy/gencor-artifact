let rec get_equal (input : int list list) : bool =
  match input with
  | [] -> true
  | h::t -> (List.length h = List.length (List.hd t)) && get_equal t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find whether all the given lists have equal length or not. *)
