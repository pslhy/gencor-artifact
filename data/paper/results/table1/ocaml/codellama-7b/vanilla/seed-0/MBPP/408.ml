let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
  match nums1, nums2 with
  | [], _ | _, [] -> []
  | nums1, nums2 when List.length nums1 <= k && List.length nums2 <= k -> [(nums1, nums2)]
  | nums1, nums2 ->
    let rec helper (nums1 : int list) (nums2 : int list) (k : int) (acc : int list list) =
      match nums1, nums2 with
      | [], _ | _, [] -> acc
      | num1 :: nums1', num2 :: nums2' ->
        if k <= 0 then acc
        else
          helper nums1' nums2 [] (helper nums1' nums2' (k - 1) ((num1, num2) :: acc))
    in
    helper nums1 nums2 k []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
