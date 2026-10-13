let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
  if k = 0 then [] else
  match nums1, nums2 with
  | n1 :: ns1, n2 :: ns2 ->
    let res = k_smallest_pairs ns1 ns2 (k - 1) in
    let pair = [n1; n2] in
    pair :: res
  | _, _ -> []

let nums1 = [1; 2; 3; 4; 5; 6; 7]
let nums2 = [8; 9; 10; 11; 12; 13; 14]
let k = 3
let result = k_smallest_pairs nums1 nums2 k
print_endline (String.concat ", " (String.concat ", " result))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
