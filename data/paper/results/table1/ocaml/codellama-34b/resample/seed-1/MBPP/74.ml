(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether it follows the sequence given in the patterns list. *)
let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
    match colors, patterns with
    | _, [] -> true
    | [], _::_ -> false
    | c::cs, p::ps ->
        if c = p then is_samepatterns cs ps
        else is_samepatterns colors (List.tl patterns)

