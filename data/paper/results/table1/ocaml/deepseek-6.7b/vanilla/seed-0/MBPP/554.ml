let rec split (list : int list) : int list =
    match list with
    | [] -> []
    | h::t when h mod 2 = 1 -> h :: split t
    | _::t -> split t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and only returns the odd ones. *)
