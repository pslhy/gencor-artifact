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
    let length = String.length text in
    let rec loop (i : int) : bool =
        if i < length / 2 then
            if text.[i] = text.[length - i - 1] then
                loop (i + 1)
            else
                false
        else
            true
    in
    loop 0

