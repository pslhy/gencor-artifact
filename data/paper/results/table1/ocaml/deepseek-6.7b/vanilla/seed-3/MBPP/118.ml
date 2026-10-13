let rec string_to_list (string : string) : string list =
  match string with
  | "" -> []
  | str -> 
      let space_position = String.index str ' ' in
      let word = String.sub str 0 space_position in
      word :: string_to_list (String.sub str (space_position + 1) (String.length str - space_position - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
