
let rec remove_whitespaces (text1 : string) : string =
    match text1 with
    | "" -> ""
    | text2 ->
        let contains_whitespace = ref false in
        let new_text = String.fold_left text2 ~failwith:(fun _ ch ->
            if Char.equal ch ' '
            then (
                contains_whitespace := true;
                ch
            ) else ch
        )
        in if !contains_whitespace then new_text else text2

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
