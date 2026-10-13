(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     The input is defined as two lists of the same length. Write a function to count indices where the lists have the same values. *)
let rec count_same_pair (nums1 : int list) (nums2 : int list) : int =
  if nums1 = [] || nums2 = [] then
    0
  else if List.hd nums1 = List.hd nums2 then
    1 + count_same_pair (List.tl nums1) (List.tl nums2)
  else
    count_same_pair (List.tl nums1) (List.tl nums2)

