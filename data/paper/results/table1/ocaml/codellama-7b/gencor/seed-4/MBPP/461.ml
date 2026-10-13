
let rec upper_ctr (str : string) : int = 
    match String.length str with
    | 0 -> 0
    | _ ->
        let char = String.get str 0 in
        if Char.uppercase_ascii char < 0 then upper_ctr (String.sub str 1 (String.length str - 1))
        else Char.uppercase_ascii char + upper_ctr (String.sub str 1 (String.length str - 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
