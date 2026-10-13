let rec solve (s : string) : string = 
    let should_reverse =
        s.[0] |> Char.isLower
        || 
        s.[0] |> Char.isUpper
        && 
        s.[1] |> Char.isLower
        || 
        s.[1] |> Char.isUpper
    in
    let should_reverse_case s =
        s.[0] |> Char.shift_numeric_value 32
        |> Char.unsafe_chr
        |> string_of_char
    in
    match s with
    | "" -> ""
    | s -> 
        if should_reverse then
            should_reverse_case s
        else
            s
~~~


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
