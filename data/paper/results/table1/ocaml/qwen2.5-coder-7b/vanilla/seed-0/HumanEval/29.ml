let rec filter_by_prefix (strings : string list) (prefix : string) : string list = 
  let is_prefix s = 
    let pref_len = String.length prefix in
    pref_len <= String.length s && String.sub s 0 pref_len = prefix in
  List.filter is_prefix strings


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
