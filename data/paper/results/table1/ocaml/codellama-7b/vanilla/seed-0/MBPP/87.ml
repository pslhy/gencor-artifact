let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  match (dict1, dict2, dict3) with
  | (d1, d2, d3) when d1 = [] && d2 = [] && d3 = [] -> []
  | (d1, d2, d3) ->
    let (key1, value1) = List.hd d1 in
    let (key2, value2) = List.hd d2 in
    let (key3, value3) = List.hd d3 in
    if key1 < key2 && key1 < key3 then
      (key1, value1) :: merge_dictionaries_three (List.tl d1) d2 d3
    else if key2 < key1 && key2 < key3 then
      (key2, value2) :: merge_dictionaries_three d1 (List.tl d2) d3
    else
      (key3, value3) :: merge_dictionaries_three d1 d2 (List.tl d3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
