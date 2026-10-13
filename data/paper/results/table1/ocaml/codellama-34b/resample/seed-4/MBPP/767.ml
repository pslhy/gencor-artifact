(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum, *)
let rec get_pairs_count (arr : int list) (sum : int) : int = 
    (* base case: if the list is empty, there are no pairs *)
    if arr = [] then 0
    else
        (* rec case: get the sum of the first element and the rest of the list, and recurse with the rest of the list *)
        let first = List.hd arr in
        let rest = List.tl arr in
        let sum_rest = get_pairs_count rest sum in
        if first + sum = sum then 1 + sum_rest
        else sum_rest
);;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_pairs_count (arr : int list) (sum : int) : int =
    match arr with
    | [] -> 0
    | hd :: tl ->
        if hd + sum = sum then 1 + get_pairs_count tl sum
        else get_pairs_count tl sum
;;

