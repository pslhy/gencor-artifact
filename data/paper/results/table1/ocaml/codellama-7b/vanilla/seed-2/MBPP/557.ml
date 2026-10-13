let rec toggle_string (string : string) : string =
    match string with
    | [] -> []
    | c :: cs ->
        if Char.uppercase c = c then
            (Char.lowercase c) :: toggle_string cs
        else
            (Char.uppercase c) :: toggle_string cs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
