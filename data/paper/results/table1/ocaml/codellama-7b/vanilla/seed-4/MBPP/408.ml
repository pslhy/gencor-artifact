let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
  if k > List.length nums1 * List.length nums2 then
    []
  else
    match k with
    | 1 -> [List.take k ([List.combine nums1 nums2] : int list list)]
    | _ ->
      let smaller_pairs = k_smallest_pairs nums1 nums2 (k-1) in
      [(List.take k (smaller_pairs : int list list))] @ small
      Least_pairs nums1 nums2 (k-small) @ small_pairs in

 let least_pairs nums1 nums2 k =
   let pairs = List.combine nums1 nums2 in
   List.sort compare pairs |> k_smallest_pairs nums1 nums2 k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
