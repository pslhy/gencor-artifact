let rec occurance_substring (text : string) (pattern : string) :  string * int * int option = 
  let rec find_substring idx =
    if idx + String.length pattern > String.length text then None
    else 
      let substr = String.sub text idx (String.length pattern) in
      if substr = pattern then Some (pattern, idx, idx + String.length pattern - 1)
      else find_substring (idx + 1)
  in
  find_substring 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
