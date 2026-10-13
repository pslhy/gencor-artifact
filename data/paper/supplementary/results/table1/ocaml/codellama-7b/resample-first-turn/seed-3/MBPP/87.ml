let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  let dict1' = Dictionary.of_list dict1 in
  let dict2' = Dictionary.of_list dict2 in
  let dict3' = Dictionary.of_list dict3 in
  let merged_dict' = Dictionary.merge_two dict1' dict2' in
  let final_dict = Dictionary.merge merged_dict' dict3' in
  Dictionary.to_list final_dict


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
