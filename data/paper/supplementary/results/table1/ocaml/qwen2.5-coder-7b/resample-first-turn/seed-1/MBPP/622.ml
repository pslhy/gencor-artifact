let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
  if n = 0 then raise (Invalid_argument "arrays must be non-empty")
  else if n = 1 then 
    if arr1.[0] <= arr2.[0] then (float arr1.[0]) else (float arr2.[0])
  else if n = 2 then 
    if.arr1.[0] <= arr2.[0] && arr1.[1] <= arr2.[1] 
    then ((float (arr1.[0] + arr1.[1])) /. 2.0)
    else if arr2.[0] <= arr1.[0] && arr2.[1] <= arr1.[1] 
    then ((float (arr2.[0] + arr2.[1])) /. 2.0)
    else if arr1.[0] <= arr2.[0] then ((float (arr1.[0] + arr2.[1])) /. 2.0)
    else ((float (arr2.[0] + arr1.[1])) /. 2.0)
  else 
    let mid1 = arr1.[n / 2] in
    let mid2 = arr2.[n / 2] in
    if mid1 = mid2 then (float mid1)
    else if mid1 < mid2 then 
      get_median (Array.sub (Array.of_list arr1) (n / 2) (n - (n / 2)))
                  (Array.sub (Array.of_list arr2) 0 (n / 2))
                  (n - (n / 2))
    else 
      get_median (Array.sub (Array.of_list arr1) 0 (n / 2))
                  (Array.sub (Array.of_list arr2) (n / 2) (n - (n / 2)))
                  (n - (n / 2))

let find_median_sorted_arrays (nums1 : int list) (nums2 : int list) : float =
  let sorted1 = List.sort compare nums1 in
  let sorted2 = List.sort compare nums2 in
  let total = List.length sorted1 + List.length sorted2 in
  if total mod 2 = 0 
  then 
    ((get_median sorted1 sorted2 (total / 2)) +. 
     (get_median sorted1 sorted2 (total / 2 - 1))) /. 2.0
  else get_median sorted1 sorted2 (total / 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
