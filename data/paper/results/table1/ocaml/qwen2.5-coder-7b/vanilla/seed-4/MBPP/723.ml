let rec count_same_pair (nums1 : int list) (nums2 : int list) : int = 
  match nums1, nums2 with
  | [], [] -> 0
  | h1::t1, h2::t2 -> if h1 = h2 then 1 + count_same_pair t1 t2 else count_same_pair t1 t2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     The input is defined as two lists of the same length. Write a function to count indices where the lists have the same values. *)
