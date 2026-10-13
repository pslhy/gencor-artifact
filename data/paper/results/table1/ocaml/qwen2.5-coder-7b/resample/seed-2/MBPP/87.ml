(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list = 
    let merge_two_dicts dict1 dict2 = 
        assoc_concat dict2 dict1 
    in 
    merge_two_dicts (merge_two_dicts dict1 dict2) dict3

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:9: Unbound value "assoc_concat" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list = 
    let rec assoc_concat lst1 lst2 = 
        match lst1 with 
        | [] -> lst2 
        | (k, v) :: rest -> 
            if List.mem_assoc k lst2 then 
                assoc_concat rest (List.remove_assoc k lst2 @ [(k, v)])
            else 
                assoc_concat rest ((k, v) :: lst2)
    in 
    assoc_concat (assoc_concat dict1 dict2) dict3

