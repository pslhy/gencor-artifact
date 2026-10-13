
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
    if n = 0 then
        -1.0
    else if n = 1 then
        float_of_int ((List.nth arr1 0) + (List.nth arr2 0)) /. 2.0
    else
        let median1 = float_of_int (List.nth arr1 (n/2))
        and median2 = float_of_int (List.nth arr2 (n/2)) in
        if median1 > median2 then
            get_median arr1 (List.tl arr2) (n/2+(n mod 2))
        else
            get_median (List.tl arr1) arr2 (n/2+(n mod 2))

let median_of_two_sorted_lists (arr1 : int list) (arr2 : int list) : float =
    let n = List.length arr1 in
    if n <> List.length arr2 then
        -1.0
    else
        get_median arr1 arr2 n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
