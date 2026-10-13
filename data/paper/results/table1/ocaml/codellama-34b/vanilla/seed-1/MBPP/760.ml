let rec unique_Element (arr : int list) : bool =
    match arr with
    | [] -> true
    | x :: [] -> true
    | x :: y :: rest -> if x = y then false else unique_Element (y :: rest)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list of numbers contains only one distinct element or not. *)
