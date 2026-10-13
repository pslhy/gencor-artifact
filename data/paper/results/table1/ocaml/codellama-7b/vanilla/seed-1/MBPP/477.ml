let rec is_lower (string : string) : string =
    let is_lower_case (char : char) : bool =
        match char with
        | 'a' to 'z' -> true
        | _         -> false
    in
    match string with
    | ""     -> ""
    | x :: xs -> if is_lower_case x then x :: is_lower (xs)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
