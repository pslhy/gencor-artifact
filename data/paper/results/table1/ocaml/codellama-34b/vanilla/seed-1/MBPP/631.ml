let rec replace_spaces (text : string) : string =
    let rec aux (acc : string) (remaining : string) : string =
        match remaining with
        | "" -> acc
        | " " -> aux (acc ^ "_") (String.sub remaining 1 (String.length remaining - 1))
        | _ -> aux (acc ^ remaining.[0]) (String.sub remaining 1 (String.length remaining - 1))
    in
    aux "" text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
