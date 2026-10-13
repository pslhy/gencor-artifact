let rec occurance_substring (text : string) (pattern : string) :  string * int * int option = 
  let rec check (text: string) (pattern: string) (pos: int) =
    if String.length pattern > String.length text then
      None
    else if text = pattern then
      Some (pattern, pos)
    else
      check (String.sub text 1 (String.length text - 1)) pattern (pos + 1)
  in
  check text pattern 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
