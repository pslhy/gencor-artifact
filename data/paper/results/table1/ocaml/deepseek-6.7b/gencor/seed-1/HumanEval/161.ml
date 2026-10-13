
let rec solve (s : string) : string =
    let len = String.length s in
    let rec helper i acc =
        if i < 0 then
            acc
        else
            let c = String.get s i in
            if Char.code c > 90 && Char.code c <= 122 then
                helper (i - 1) (Char.chr (Char.code c - 32) :: acc)
            else if Char.code c > 64 && Char.code c <= 90 then
                helper (i - 1) (Char.chr (Char.code c + 32) :: acc)
            else if c = ' ' then
                helper (i - 1) (c :: acc)
            else if Char.code c >= 48 && Char.code c <= 57 then
                helper (i - 1) (c :: acc)
            else
                helper (i - 1) ('*' :: acc) (* non-letter character *)
    in String.of_seq (List.to_seq (helper (len - 1) []))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a string s. *)
(*     if s[i] is a letter, reverse its case from lower to upper or vise versa, *)
(*     otherwise keep it as it is. *)
(*     If the string contains no letters, reverse the string. *)
(*     The function should return the resulted string. *)
(*     Examples *)
(*     >>> solve "1234" *)
(*     "4321" *)
(*     >>> solve "ab" *)
(*     "AB" *)
(*     >>> solve "#a@C" *)
(*     "#A@c" *)
