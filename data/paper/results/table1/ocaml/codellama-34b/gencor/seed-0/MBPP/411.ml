
let rec snake_to_camel (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let (first, rest) = word.[0], word.[1..(String.length word - 1)] in
        String.make 1 (Char.uppercase_ascii first) ^ snake_to_camel rest

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
