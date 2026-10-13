let rec occurance_substring (text : string) (pattern : string) :  string * int * int option = 
  let rec helper pos =
    if pos >= String.length text then
      None
    else if String.starts_with_substring ~pos text pattern then
      Some (pattern, pos, pos + String.length pattern - 1)
    else
      helper (pos + 1)
  in
  helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
