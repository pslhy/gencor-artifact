
let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
  let len1, len2 = List.length nums1, List.length nums2 in
  if len1 * len2 <= k then
    List.flatten (List.map (fun x -> List.map (fun y -> [x; y]) nums2) nums1)
  else if len1 = 0 && len2 = 0 then []
  else
    let pairs = List.map (fun x -> List.map (fun y -> (x, y)) nums2) nums1 in
    let flattened_pairs = List.flatten pairs in
    let sorted_pairs = List.sort (fun (_, i) (_, j) -> compare i j) flattened_pairs in
    let k_smallest = List.split (List.rev (List.rev_map List.rev (List.split sorted_pairs))) in
    let k_smallest_left, _ = List.split (List.split k_smallest) in
    k_smallest_left

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
