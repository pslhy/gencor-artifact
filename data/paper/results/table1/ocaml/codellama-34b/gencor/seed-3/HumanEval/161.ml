
let rec solve (s : string) : string =
    if String.length s = 0 then
        ""
    else if Char.lowercase_ascii s.[0] then
        Char.uppercase_ascii s.[0] :: solve (String.sub s 1 (String.length s - 1))
    else if Char.uppercase_ascii s.[0] then
        Char.lowercase_ascii s.[0] :: solve (String.sub s 1 (String.length s - 1))
    else
        s.[0] :: solve (String.sub s 1 (String.length s - 1))

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
