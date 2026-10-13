let rec unique_Element (arr : int list) : bool =
  match arr with
  |[] -> true
  |[h] -> true
  |h1::(h2::_ as t) -> if h1 = h2 then false else unique_Element t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list of numbers contains only one distinct element or not. *)
