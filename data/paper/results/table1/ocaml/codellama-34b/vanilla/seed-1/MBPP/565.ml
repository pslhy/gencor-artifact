let rec split (word : string) : string list =
    let rec aux (acc : string list) (word : string) : string list =
        match word with
        | "" -> acc
        | _ -> aux (word[0] :: acc) (word[1..])
    in
    aux [] word


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a string into characters. *)
