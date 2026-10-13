(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
    let mid = n / 2 in
    if n = 1 then
        float_of_int (arr1.ith mid / arr2.ith mid)
    else if n mod 2 = 0 then
        let m1 = arr1.ith mid in
        let m2 = arr2.ith mid in
        float_of_int ((m1 + m2) / 2)
    else
        let m1 = arr1.ith mid in
        let m2 = arr2.ith (mid + 1) in
        float_of_int ((m1 + m2) / 2)

