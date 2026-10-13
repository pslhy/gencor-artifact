let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  match text with
  | "" -> ("", 0, None)
  | _ -> match (String.index_opt text pattern) with
    | Some index -> (String.sub text 0 index, index, Some (index + String.length pattern))
    | None -> occurance_substring (String.sub text 1 (String.length text - 1)) pattern


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
