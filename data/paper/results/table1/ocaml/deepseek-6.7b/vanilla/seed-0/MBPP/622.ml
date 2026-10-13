let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
    if n = 0 then
        -1.0
    else if n = 1 then
        float_of_int ((List.nth arr1 0) + (List.nth arr2 0)) /. 2.0
    else
        let median1 = float_of_int (List.nth arr1 (n/2))
        and median2 = float_of_int (List.nth arr2 (n/2)) in
        if median1 > median2 then
            get_median arr1 (List.sub arr2 (n/2)) (n/2)
        else
            get_median (List.sub arr1 (n/2)) arr2 (n/2)

let rec merge_lists (arr1 : int list) (arr2 : int list) : int list =
    match arr1, arr2 with
    | [], arr | arr, [] -> arr
    | h1::t1, h2::t2 -> if h1 < h2 then h1::(merge_lists t1 arr2) else h2::(merge_lists arr1 t2)

let find_median_of_two_sorted list1 list2 =
    if List.length list1 != List.length list2 then
        failwith "Two lists must have the same length."
    else
        let combined_list = merge_lists list1 list2
        and length = List.length list1 in
        get_median combined_list length


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
