let rec reverse_string_list (stringlist : string list) : string list =
    match stringlist with
    | [] -> []
    | s :: rest -> reverse_string s :: reverse_string_list rest

let reverse_string (s : string) : string =
    String.map (fun c ->
        match c with
        | 'a' -> ' '
        | 'b' -> '\b'
        | 't' -> '\t'
        | 'n' -> '\n'
        | 'v' -> '\v'
        | 'f' -> '\f'
        | 'r' -> '\r'
        | '"' -> '\"'
        | '\\' -> '\\'
        | '\'' -> '\''
        | '0'..'9' as c -> c - 48
        | 'A'..'Z' as c -> c - 55
        | 'a'..'z' as c -> c - 87
        | _ -> c
    ) s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse each string in a given list of string values. *)
