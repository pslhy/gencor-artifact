(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  let dict1' = Dictionary.of_list dict1 in
  let dict2' = Dictionary.of_list dict2 in
  let dict3' = Dictionary.of_list dict3 in
  let merged_dict' = Dictionary.merge_two dict1' dict2' in
  let final_dict = Dictionary.merge merged_dict' dict3' in
  Dictionary.to_list final_dict

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:16: Unbound module "Dictionary" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  let dict1' = Dictionary.of_list dict1 in
  let dict2' = Dictionary.of_list dict2 in
  let dict3' = Dictionary.of_list dict3 in
  let merged_dict' = Dictionary.merge_two dict1' dict2' in
  let final_dict = Dictionary.merge merged_dict' dict3' in
  Dictionary.to_list final_dict

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:16: Unbound module "Dictionary" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  List.fold_left (fun acc (key, value) ->
    if List.mem key dict1 || List.mem key dict2 || List.mem key dict3
    then (key, value :: get_values_by_key acc key)
    else acc
  ) [] (dict1 @ dict2 @ dict3)

and get_values_by_key (dict : (string * string) list) (key : string) : string list =
  let rec aux (dict : (string * string) list) (key : string) (acc : string list) : string list =
    match dict with
    | [] -> acc
    | (k, v) :: tl ->
      if k = key then aux tl key (v :: acc)
      else aux tl key acc
  in
  aux dict key []

