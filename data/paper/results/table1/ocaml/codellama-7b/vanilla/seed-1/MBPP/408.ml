let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
    let rec aux nums1 nums2 pairs =
        match nums1, nums2 with
        | [], _ -> pairs
        | _, [] -> pairs
        | num1 :: nums1', num2 :: nums2' ->
            if Sys.opaque (num1, num2) < Sys.opaque (num3, num4) then
                aux nums1 nums2' ((num1, num2) :: pairs)
            else
                aux nums1' nums2 ((num3, num4) :: pairs)
    in
    aux nums1 nums2 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
