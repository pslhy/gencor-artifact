(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a list to a string. *)
let rec tup_string (tup1 : string list) : string =
    match tup1 with
    | [] -> ""
    | h::t -> h ^ "," ^ (tup_string t)

