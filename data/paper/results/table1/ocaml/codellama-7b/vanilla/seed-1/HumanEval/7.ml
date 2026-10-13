let rec filter_by_substring (strings : string list) (substring : string) : string list =
match strings with
| [] -> []
| h :: t -> if Str.string_match (Str.regexp substring) h 0 then h :: filter_by_substring t substring else filter_by_substring t substring


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
