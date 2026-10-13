let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
  if n <= 0 then failwith "Invalid input"
  else if n == 1 then 
    (float_of_int (max (List.hd arr1) (List.hd arr2)))
  else if n == 2 then 
    (float_of_int ((max (List.hd arr1) (List.hd arr2)) + min (List.nth arr1 1) (List.nth arr2 1))) /. 2.0
  else 
    let mid1 = List.nth arr1 (n / 2 - 1)
    and mid2 = List.nth arr2 (n / 2 - 1) in
    if mid1 <= mid2 then 
      get_median (List.tl arr1) arr2 (n / 2)
    else 
      get_median arr1 (List.tl arr2) (n / 2)

let find_median_sorted_arrays (nums1 : int list) (nums2 : int list) : float =
  let total_length = List.length nums1 + List.length nums2 in
  get_median nums1 nums2 (total_length / 2 + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
