
let rec filter_by_substring (strings : string list) (substring : string) : string list =
  match strings with
  | [] -> []
  | s :: xs ->
    if String.is_valid_utf_8 s && String.contains s substring then s :: filter_by_substring xs substring
    else filter_by_substring xs substring

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Filter an input list of strings only for ones that contain given substring *)
(*     >>> filter_by_substring [] "a" *)
(*     [] *)
(*     >>> filter_by_substring ["abc"; "bacd"; "cde"; "array"] "a" *)
(*     ["abc"; "bacd"; "array"] *)
