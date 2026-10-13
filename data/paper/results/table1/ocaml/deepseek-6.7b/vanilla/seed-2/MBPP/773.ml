let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  let pattern_length = String.length pattern in
  let text_length = String.length text in
  let rec helper i count =
    if i + pattern_length > text_length then
      None
    else if String.sub text i pattern_length = pattern then
      Some(count+1, i, String.sub text i text_length)
    else
      helper (i+1) (count+1)
  in
  let result = helper 0 0 in
  match result with
  | None -> raise Not_found
  | Some (count, position, string) -> (string, count, position)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
