let rec toggle_string (string : string) : string =
    let is_uppercase s =
        match s with
        | "" -> false
        | _ -> Char.lowercase_ascii (String.get s 0) = s
    in
    match string with
    | "" -> ""
    | _ ->
        let is_first_uppercase = is_uppercase (String.get string 0) in
        let first =
            if is_first_uppercase then String.lowercase_ascii (String.get string 0)
            else String.uppercase_ascii (String.get string 0)
        in
        let rest = toggle_string (String.sub string 1 (String.length string - 1)) in
        first ^ rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
