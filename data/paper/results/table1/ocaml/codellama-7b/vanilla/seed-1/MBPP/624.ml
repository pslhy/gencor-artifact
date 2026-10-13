let rec is_upper (string : string) : string =
    let is_uppercase s =
        match s with
        | "" -> false
        | _ -> Char.lowercase s.[0] = s.[0]

    if is_uppercase string then
        string
    else
        let (first, rest) = take (string, 1)
        let rest = upcase (rest)
        first::rest
in
str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
