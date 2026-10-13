(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
let rec find_min_diff (arr : int list) (n : int) : int =
    match arr with
    | [] -> max_int
    | hd :: tl ->
        let res = find_min_diff tl n in
        if hd - (hd % n) < res then min (hd - (hd % n)) res
        else res

let rec find_min_diff_list (arr : int list) : int =
    match arr with
    | [] -> max_int
    | hd :: tl -> min (find_min_diff arr hd) (find_min_diff_list tl)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:21: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_min_diff (arr : int list) (n : int) : int =
    match arr with
    | [] -> max_int
    | hd :: tl ->
        let res = find_min_diff tl n in
        if hd mod n < res then min (hd mod n) res
        else res

let rec find_min_diff_list (arr : int list) : int =
    match arr with
    | [] -> max_int
    | hd :: tl -> min (find_min_diff arr hd) (find_min_diff_list tl)

