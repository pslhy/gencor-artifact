(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Filter an input list of strings only for ones that contain given substring *)
(*     >>> filter_by_substring [] "a" *)
(*     [] *)
(*     >>> filter_by_substring ["abc"; "bacd"; "cde"; "array"] "a" *)
(*     ["abc"; "bacd"; "array"] *)
let rec filter_by_substring (strings : string list) (substring : string) : string list =
match strings with
| [] -> []
| h :: t -> if Str.string_match (Str.regexp substring) h 0 then h :: filter_by_substring t substring else filter_by_substring t substring

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:16: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec filter_by_substring (strings : string list) (substring : string) : string list =
  match strings with
  | [] -> []
  | h :: t -> if String.contains h substring then h :: filter_by_substring t substring else filter_by_substring t substring

