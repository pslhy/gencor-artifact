
let rec text_lowercase_underscore (text : string) : bool = 
    (* base case: empty string with no underscores *)
    if text = "" then
        false
    (* recursive case: check if the first character is a lowercase letter and the remaining string meets the recursive case *)
    else if Char.lowercase_ascii text.[0] && text_lowercase_underscore (String.sub text 1 (String.length text - 1)) then
        true
    (* base case: all other cases, including the general case with an underscore *)
    else
        false

(* helper function that checks if the last character is an underscore *)
let ends_with_underscore (text : string) : bool =
    Char.equal text.[String.length text - 1] '_'

(* helper function that checks if the first character is an underscore *)
let starts_with_underscore (text : string) : bool =
    Char.equal text.[0] '_'

(* the main function that calls the helper functions to check if the input string meets the condition *)
let check_string (text : string) : bool =
    ends_with_underscore text && starts_with_underscore text || text_lowercase_underscore text

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
