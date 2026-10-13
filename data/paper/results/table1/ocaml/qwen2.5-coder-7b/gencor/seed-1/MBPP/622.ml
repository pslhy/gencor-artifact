
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
  if n = 0 then raise (Invalid_argument "arrays must be non-empty")
  else if n = 1 then 
    if arr1.[0] <= arr2.[0] then (float arr1.[0]) else (float arr2.[0])
  else if n = 2 then 
    if arr1.[0] <= arr2.[0] && arr1.[1] <= arr2.[1] then 
      (float ((arr1.[0] + arr1.[1]) / 2))
    else if arr1.[0] >= arr2.[0] && arr1.[1] >= arr2.[1] then 
      (float ((arr2.[0] + arr2.[1]) / 2))
    else if arr1.[0] <= arr2.[0] && arr1.[1] >= arr2.[0] then 
      (float (max arr1.[0] arr2.[0]))
    else 
      (float (min arr1.[1] arr2.[1]))
  else 
    let new_n = n / 2 in
    let mid1 = arr1.[new_n - 1] in
    let mid2 = arr2.[new_n - 1] in
    if mid1 == mid2 then (float mid1)
    else if mid1 < mid2 then 
      get_median (Array.sub arr1 new_n (Array.length arr1 - new_n)) arr2 (n - new_n)
    else 
      get_median arr1 (Array.sub arr2 new_n (Array.length arr2 - new_n)) (n - new_n)

let find_median_sorted_arrays (arr1 : int list) (arr2 : int list) : float =
  if List.length arr1 <> List.length arr2 then 
    raise (Invalid_argument "arrays must be of the same size")
  else
    let arr1 = Array.of_list arr1 in
    let arr2 = Array.of_list arr2 in
    if List.length arr1 = 1 then 
      if arr1.[0] <= arr2.[0] then (float arr1.[0]) else (float arr2.[0])
    else if List.length arr1 = 2 then 
      (get_median (Array.of_list arr1) (Array.of_list arr2) 2)
    else 
      get_median arr1 arr2 (List.length arr1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
