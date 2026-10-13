(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
let rec all_Characters_Same (s : string) : bool =
    match s with
    | [] | [_] -> true
    | h :: t -> h = t.[0] && all_Characters_Same t

