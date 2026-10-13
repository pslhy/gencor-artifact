let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list = 
  List.fold_left (fun acc (key, value) -> 
    if List.mem_assoc key acc then acc else (key, value) :: acc
  ) (merge_dictionaries_two dict1 dict2) dict3

and merge_dictionaries_two (dict1 : (string * string) list) (dict2 : (string * string) list) : (string * string) list = 
  List.fold_left (fun acc (key, value) -> 
    if List.mem_assoc key acc then acc else (key, value) :: acc
  ) dict1 dict2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
