let rec remove_dirty_chars (string : string) (second_string : string) : string =
  match string with
  | "" -> ""
  | hd :: tl ->
      if String.contains second_string hd then remove_dirty_chars tl second_string
      else String.make 1 hd ^ remove_dirty_chars tl second_string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
