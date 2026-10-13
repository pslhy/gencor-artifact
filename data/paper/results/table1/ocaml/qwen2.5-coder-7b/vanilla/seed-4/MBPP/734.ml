let rec sum_Of_Subarray_Prod (arr : int list) : int = 
  let rec calculate_subarray_sum products idx sum len remain =
    if idx >= len then sum
    else
      let new_products = List.map (fun p -> p * arr.(idx)) products in
      let current_sum = sum + (List.fold_left (+) 0 (new_products @ products)) in
      calculate_subarray_sum (new_products @ products) (idx + 1) current_sum len (remain - 1)
  in
  let rec helper start total_sum =
    if start >= Array.length (List.to_array arr) then total_sum
    else
      helper (start + 1) (total_sum + calculate_subarray_sum [arr.(start)] start 0 (Array.length (List.to_array arr) - start))
  in
  helper 0 0

let _ = print_int (sum_Of_Subarray_Prod [1; 2; 3])

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
