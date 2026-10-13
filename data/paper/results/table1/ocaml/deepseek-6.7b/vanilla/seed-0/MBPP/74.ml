let rec is_samepatterns (colors : string list) (patterns : string list) : bool =
    match patterns, colors with
    | [], [] -> true
    | hd_pattern::tl_pattern, hd_color::tl_color -> if hd_pattern = hd_color then is_samepatterns tl_color tl_pattern else false
    | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether it follows the sequence given in the patterns list. *)
