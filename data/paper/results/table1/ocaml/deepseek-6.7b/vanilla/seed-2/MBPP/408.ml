let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
  let len1 = List.length nums1 in
  let len2 = List.length nums2 in
  if len1 * len2 <= k then
    List.map (fun x -> List.map (fun y -> [x; y]) nums2) nums1
  else
    let pairs = List.map (fun x -> List.map (fun y -> [x; y]) nums2) nums1 in
    let sorted_pairs = List.sort (fun a b -> (List.nth a 0 + List.nth a 1) - (List.nth b 0 + List.nth b 1)) pairs in
    List.split (List.take k sorted_pairs)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
