(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
  if k = 0 then
    []
  else
    let n1 = List.hd nums1 in
    let n2 = List.hd nums2 in
    if n1 + n2 < List.hd nums1 + List.hd nums2 then
      (n1, n2) :: k_smallest_pairs nums1 (List.tl nums2) (k - 1)
    else
      (List.hd nums1 + List.hd nums2) :: k_smallest_pairs (List.tl nums1) nums2 (k - 1)

let _ =
  let nums1 = [1; 2; 3] in
  let nums2 = [4; 5; 6] in
  let k = 2 in
  k_smallest_pairs nums1 nums2 k

