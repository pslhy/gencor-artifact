let rec is_lower (string : string) : string =
    match string with
    | [] -> []
    | h :: t when h >= 'A' && h <= 'Z' -> (h + 32 :: t)
    | h :: t -> h :: is_upper (t)

let to_lower_case (string : string) : string =
    let rec aux (string : string) : string =
        match string with
        | [] -> []
        | h :: t -> (is_lower h :: aux t)
    aux string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
