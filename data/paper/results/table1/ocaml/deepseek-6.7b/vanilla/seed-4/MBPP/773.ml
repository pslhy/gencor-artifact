let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  let pattern_length = String.length pattern in
  let text_length = String.length text in
  let rec check (start_pos : int) : int * int option =
    if start_pos + pattern_length > text_length then
      (0, None)
    else if String.sub text start_pos pattern_length = pattern then
      (1, Some start_pos)
    else
      let count, next = check (start_pos + 1) in
      (count + (match next with None -> 0 | Some _ -> 0), next)
  in
  let count, start_pos_opt = check 0 in
  (pattern, count, start_pos_opt)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
