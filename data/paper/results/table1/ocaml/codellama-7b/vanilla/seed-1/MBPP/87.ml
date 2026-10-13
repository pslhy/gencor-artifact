let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
    let rec aux (acc : (string * string) list) (dict : (string * string) list) : (string * string) list =
        match dict with
        | [] -> acc
        | (k, v) :: tail -> aux ((k, v) :: acc) tail
    in
    let merged = aux [] (merge_dictionaries_two dict1 dict2) in
    aux merged dict3

and merge_dictionaries_two (dict1 : (string * string) list) (dict2 : (string * string) list) : (string * string) list =
    let rec aux (acc : (string * string) list) (dict : (string * string) list) : (string * string) list =
        match dict with
        | [] -> acc
        | (k, v) :: tail -> aux ((k, v) :: acc) tail
    in
    aux [] (merge_dictionaries dict1 dict2)

and merge_dictionaries (dict1 : (string * string) list) (dict2 : (string * string) list) : (string * string) list =
    let rec aux (acc : (string * string) list) (dict : (string * string) list) : (string * string) list =
        match dict with
        | [] -> acc
        | (k, v) :: tail -> aux ((k, v) :: acc) tail
    in
    let merge_duplicates = List.map ~f:(fun (k, vs) -> (k, List.concat_map ~f:snd vs)) in
    let merge = List.concat_map ~f:(fun (k, vs) -> List.map ~f:(fun v -> (k, v)) vs) in
    merge (merge_duplicates (aux [] (aux [] (aux [] dict1 dict2) dict2)))

let a = [("a", "AA"); ("b", "BB")]
let b = [("a", "AA"); ("c", "CC")]
let c = [("b", "BB"); ("d", "DD")]

merge_dictionaries_three a b c;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
