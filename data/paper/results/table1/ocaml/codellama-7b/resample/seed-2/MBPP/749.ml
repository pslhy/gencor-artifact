(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)
let rec sort_numeric_strings (nums_str : string list) : int list =
    match nums_str with
    | [] -> []
    | h :: t ->
        let (lt, gt) = List.partition (fun x -> Utils.atol x < Utils.atol h) t in
        let lt = sort_numeric_strings lt in
        let gt = h :: sort_numeric_strings gt in
        lt @ gt

and Utils.atol (s : string) : int =
    Scanf.sscanf s "%d" (fun x -> x)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numeric_strings (nums_str : string list) : int list =
    match nums_str with
    | [] -> []
    | h :: t ->
        let (lt, gt) = List.partition (fun x -> Utils.atol x < Utils.atol h) t in
        let lt = sort_numeric_strings lt in
        let gt = h :: sort_numeric_strings gt in
        lt @ gt

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:49: Unbound module "Utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numeric_strings (nums_str : string list) : int list =
    match nums_str with
    | [] -> []
    | h :: t ->
        let (lt, gt) = List.partition (fun x -> int_of_string x < int_of_string h) t in
        let lt = sort_numeric_strings lt in
        let gt = h :: sort_numeric_strings gt in
        lt @ gt

