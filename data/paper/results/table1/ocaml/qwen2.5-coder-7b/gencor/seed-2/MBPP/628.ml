
let rec replace_spaces (string : string) : string = 
    let rec loop chars result = 
        match chars with
        | [] -> result
        | ' ' :: ctail -> loop ctail (result ^ "%20")
        | c :: ctail -> loop ctail (result ^ (Char.escaped c))
    in loop (String.to_seq string) ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
