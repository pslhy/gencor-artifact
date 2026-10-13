
let rec check_integer (text : string) : bool = 
    let trim_spaces = String.trim text in
    match trim_spaces with 
    | "" -> false
    | c when not (Char.equal c '+' && String.length trim_spaces = 1) -> 
        try 
            int_of_string trim_spaces; 
            true
        with Failure _ -> 
            false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
