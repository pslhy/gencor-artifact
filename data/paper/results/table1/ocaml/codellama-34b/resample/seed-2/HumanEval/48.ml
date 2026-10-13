(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Checks if given string is a palindrome *)
(*     >>> is_palindrome "" *)
(*     true *)
(*     >>> is_palindrome "aba" *)
(*     true *)
(*     >>> is_palindrome "aaaaa" *)
(*     true *)
(*     >>> is_palindrome "zbcd" *)
(*     false *)
let rec is_palindrome (text : string) : bool =
    match text with
    | "" | " " -> true
    | _ ->
        let len = String.length text in
        if len = 0 then
            false
        else
            let first_char = text.[0] in
            let last_char = text.[len - 1] in
            if first_char = last_char then
                is_palindrome text.[1.. len - 2]
            else
                false

