let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
    let left = min (arr1 @ arr2) in
    let right = max (arr1 @ arr2) in
    let mid = (left + right) / 2 in
    if n = 1 then
        mid
    else
        let div = n / 2 in
        let sub1 = get_median (List.take arr1 div) (List.take arr2 div) div in
        let sub2 = get_median (List.drop arr1 div) (List.drop arr2 div) div in
        (sub1 + sub2) / 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
