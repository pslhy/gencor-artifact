let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
  if n = 0 then invalid_arg "Arrays are empty"
  else if n = 1 then
    (max (List.hd arr1) (List.hd arr2)) *. 0.5
  else if n = 2 then
    let max_of_first = max (List.hd arr1) (List.hd arr2) in
    let min_of_second = min (List.hd (List.tl arr1)) (List.hd (List.tl arr2)) in
    (max_of_first +. min_of_second) /. 2.0
  else
    let mid1 = List.nth arr1 (n / 2 - 1) in
    let mid2 = List.nth arr2 (n / 2 - 1) in
    if mid1 = mid2 then mid1 *. 0.5
    else if mid1 < mid2 then
      get_median (List.tl arr1) arr2 (n / 2)
    else
      get_median arr1 (List.tl arr2) (n / 2)

let find_median_sorted_arrays (arr1 : int list) (arr2 : int list) : float =
  (get_median arr1 arr2 (List.length arr1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
