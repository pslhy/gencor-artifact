let rec snake_to_camel (word : string) : string =
    let capitalize_first s =
        match s with
        | "" -> ""
        | _ -> Char.lowercase (String.get s 0) :: String.sub s 1 (String.length s - 1)
    in
    match word with
    | "" -> ""
    | _ -> capitalize_first (String.map (function
                | '_' -> ' '
                | c -> c) word)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
