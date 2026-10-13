let rec string_to_list (string : string) : string list =
    let space_index = String.index string ' ' in
    let substring = String.sub string 0 space_index in
    let rest = String.sub string (space_index + 1) (String.length string - space_index - 1) in
    substring :: (string_to_list rest)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
