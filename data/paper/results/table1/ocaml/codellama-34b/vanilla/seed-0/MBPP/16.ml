let rec text_lowercase_underscore (text : string) : bool =
    match text with
    | [] -> true
    | hd :: tl ->
        if (hd >= 'a' && hd <= 'z') || hd = '_' then
            text_lowercase_underscore tl
        else
            false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
