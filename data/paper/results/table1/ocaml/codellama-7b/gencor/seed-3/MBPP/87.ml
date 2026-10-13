
let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  let dict1' = List.sort (fun (key1, _) (key2, _) -> compare key1 key2) dict1 in
  let dict2' = List.sort (fun (key1, _) (key2, _) -> compare key1 key2) dict2 in
  let dict3' = List.sort (fun (key1, _) (key2, _) -> compare key1 key2) dict3 in
  let rec merge_dictionaries_two acc dict1 dict2 =
    match dict1, dict2 with
    | [], [] -> acc
    | [], (key, value) :: rest -> merge_dictionaries_two ((key, value) :: acc) [] rest
    | (key, value) :: rest, _ -> merge_dictionaries_two acc dict2 rest
  in
  let acc = merge_dictionaries_two [] dict1' dict2' in
  merge_dictionaries_two acc dict3' []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
