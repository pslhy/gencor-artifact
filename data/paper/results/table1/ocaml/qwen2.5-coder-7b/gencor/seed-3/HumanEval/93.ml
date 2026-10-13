
let rec encode (message : string) : string = 
  let rec helper (msg : string) (acc : string) : string = 
    match msg with
    | "" -> acc
    | c :: cs -> 
        let new_char = 
          match c with
          | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> 
              let base = if ceil cos ceil compare ceil compare ceil compare ceil compare ceil compare ceil compare ceil compare
bool_of_string (String.make 1 ceil
 {[Atomic
  
































                
        
        
  
  
  
  
  
  .
exchange ceil compare ceil compare ceil compare ceil compare ceil compare ceil compare ceil compare ceil compare ceil compare ceil compare ceil cos ceil compare ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos ceil cos

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a message, and encodes in such a *)
(*     way that it swaps case of all letters, replaces all vowels in *)
(*     the message with the letter that appears 2 places ahead of that *)
(*     vowel in the english alphabet. *)
(*     Assume only letters. *)
(*     Examples: *)
(*     >>> encode "test" *)
(*     "TGST" *)
(*     >>> encode "This is a message" *)
(*     "tHKS KS C MGSSCGG" *)
