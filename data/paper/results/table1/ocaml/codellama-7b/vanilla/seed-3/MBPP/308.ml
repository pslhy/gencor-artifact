let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  if n = 0 then
    []
  else if nums1 = [] || nums2 = [] then
    []
  else
    let product = nums1.(0) * nums2.(0) in
    let rest1 = List.tl nums1 in
    let rest2 = List.tl nums2 in
    product :: large_product rest1 rest2 (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
