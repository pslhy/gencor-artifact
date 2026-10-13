(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
let rec toggle_string (string : string) : string =
    let rec aux (acc : string) (string : string) =
        match string with
        | [] -> acc
        | hd :: tl ->
            let hd' = if (hd >= 'A' && hd <= 'Z') then Char.chr (Char.code hd + 32) else Char.chr (Char.code hd - 32) in
            aux (acc ^ hd') tl in
    aux "" string

