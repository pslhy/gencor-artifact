let rec occurance_substring (text : string) (pattern : string) :  string * int * int option = 
    let pos = if (String.contains text pattern) 
            then String.index text pattern 
            else -1
    in if pos = -1 then (pattern, -1, None)
    else (pattern, pos, Some (String.length pattern))

let substring_match ( text : string ) (pattern : string ) : (string * int * int option) =
  if String.contains text pattern then occurance_substring text pattern
  else (pattern, -1, None)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
