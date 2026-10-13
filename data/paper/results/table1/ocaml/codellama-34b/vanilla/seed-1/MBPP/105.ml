let rec count (lst : bool list) : int =
    match lst with
    | [] -> 0
    | true :: tail -> 1 + count tail
    | false :: tail -> count tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count true booleans in the given list. *)
