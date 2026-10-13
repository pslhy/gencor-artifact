let rec filter_by_prefix (strings : string list) (prefix : string) : string list =
  match strings with
  | [] -> []
  | h::t ->
     if String.sub h 0 (String.length prefix) = prefix then
       h::filter_by_prefix t prefix
     else
       filter_by_prefix t prefix


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Filter an input list of strings only for ones that start with a given prefix. *)
(*     >>> filter_by_prefix [] "a" *)
(*     [] *)
(*     >>> filter_by_prefix ["abc"; "bcd"; "cde"; "array"] "a" *)
(*     ["abc"; "array"] *)
