
let rec solve (s : string) : string = 
    let should_reverse =
        s.[0] |> Char.unsafe_chr |> Char.lowercase_ascii
         - s.[0] |> Char.unsafe_chr |> Char.uppercase_ascii
         <> 0
    in
    if not should_reverse && s <> "" 
        then s
        else s |> String.map (fun c -> 
            if c |> Char.unsafe_chr |> Char.lowercase_ascii
                then Char.uppercase_ascii (c |> Char.unsafe_chr)
                else Char.lowercase_ascii (c |> Char.unsafe_chr)
            )

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
