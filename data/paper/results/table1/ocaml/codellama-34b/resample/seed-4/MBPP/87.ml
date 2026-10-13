(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list = 
    (* Merge the three dictionaries into a single association list with no duplicates. *)
    match dict1, dict2, dict3 with 
    | [], [], [] -> []
    | (k1, v1) :: rest1, [(k2, v2) :: rest2, (k3, v3) :: rest3] ->
        (* If the key is present in all three dictionaries, keep the value from the first dictionary. *)
        if k1 = k2 && k1 = k3 then
            (k1, v1) :: merge_dictionaries_three rest1 rest2 rest3
        else if k1 = k2 then
            (k1, v1) :: merge_dictionaries_three rest1 ((k3, v3) :: rest2) rest3
        else if k1 = k3 then
            (k1, v1) :: merge_dictionaries_three rest1 rest2 ((k2, v2) :: rest3)
        else if k2 = k3 then
            (k2, v2) :: merge_dictionaries_three ((k1, v1) :: rest1) rest2 rest3
        else
            (k3, v3) :: merge_dictionaries_three ((k1, v1) :: rest1) ((k2, v2) :: rest2) rest3
    | _ -> []

