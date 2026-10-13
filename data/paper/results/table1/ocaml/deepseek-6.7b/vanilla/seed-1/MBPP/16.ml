let rec text_lowercase_underscore (text : string) : bool =
  match text with
  | "" -> true
  | _ when not (String.contains "_" text) -> false
  | _ ->
      let next_index = String.index text '_' in
      let first_substring = String.sub text 0 next_index in
      let last_substring = String.sub text (next_index + 1) (String.length text - next_index - 1) in
      (String.lowercase_ascii first_substring = first_substring) && 
      (String.lowercase_ascii last_substring = last_substring) &&
      (String.lowercase_ascii text = "_" || text_lowercase_underscore last_substring)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
