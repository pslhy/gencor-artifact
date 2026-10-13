let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  let pattern_len = String.length pattern in
  let rec helper (offset : int) : int * int option =
    if offset + pattern_len > String.length text then
      (offset, None)
    else if String.sub text offset pattern_len = pattern then
      (offset, Some offset)
    else
      helper (offset + 1)
  in
  let start, occ_opt = helper 0 in
  (pattern, start, occ_opt)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
