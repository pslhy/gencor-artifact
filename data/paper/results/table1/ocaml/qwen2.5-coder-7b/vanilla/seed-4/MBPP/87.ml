let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list = 
  let merge_two_dicts dict1 dict2 = 
    List.fold_left (fun acc (k, v) -> 
      if List.mem_assoc k acc then acc else (k, v) :: acc) dict2 dict1 in
  let merged1 = merge_two_dicts dict1 dict2 in
  merge_two_dicts merged1 dict3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
