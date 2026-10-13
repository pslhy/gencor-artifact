let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  if pattern = "" then (text, 0, None)
  else match text with
    | [] -> None
    | _ :: text' ->
      let (matched, pos) = search (text' ^ text) pattern in
      if matched <> "" then Some (text', (-(String.length pattern - pos), Some (text', (-(String.length pattern - pos))))
      else None


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
