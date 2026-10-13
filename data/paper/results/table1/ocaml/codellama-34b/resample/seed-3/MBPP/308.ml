(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  if n = 1 then
    [
      (List.length nums1), (List.length nums2)
    ]
  else if n >= 1 then
    let prod = large_product (nums1 @ nums2) (nums1 @ nums2) (n-1) in
    (max (fst prod) (snd prod)) :: (large_product nums1 nums2 (n-1))
  else
    []

