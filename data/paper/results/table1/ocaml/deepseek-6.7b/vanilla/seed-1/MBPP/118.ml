let rec string_to_list (string : string) : string list =
  match string with
  | "" -> []
  | str -> begin
      let space_index = String.index str ' ' in
      let first_part = String.sub str 0 space_index in
      let rest = String.sub str (space_index + 1) (String.length str - space_index - 1) in
      first_part :: string_to_list rest
    end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
