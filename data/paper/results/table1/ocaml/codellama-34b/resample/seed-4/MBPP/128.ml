(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
let rec long_words (n : int) (str : string) : string list = 
    let words = String.split_on_char ' ' str in
    let rec helper (current : string list) : string list = 
        match current with
        | [] -> []
        | h :: t -> 
            if String.length h > n then
                h :: helper t
            else
                helper t
    
    

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec long_words (n : int) (str : string) : string list =
    let words = String.split_on_char ' ' str in
    let rec helper (current : string list) : string list =
        match current with
        | [] -> []
        | h :: t ->
            if String.length h > n then
                h :: helper t
            else
                helper t
    in
    helper words

