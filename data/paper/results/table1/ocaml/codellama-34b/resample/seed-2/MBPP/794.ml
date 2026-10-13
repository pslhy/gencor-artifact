(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
let rec text_starta_endb (text : string) : bool =
    match text with
    | [] -> false
    | 'a'::_::'b'::_ -> true
    | _::rest -> text_starta_endb rest

