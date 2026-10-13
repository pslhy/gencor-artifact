let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list = 
  let rec mergePairs p1 p2 = 
    match (p1, p2) with
    | ([], p2) | (p1, []) -> p1 @ p2
    | (h1::t1, h2::t2) when h1 < h2 -> h1 :: mergePairs t1 p2
    | (h1::t1, h2::t2) -> h2 :: mergePairs p1 t2
  in
  let rec getPairs l1 l2 pairs =
    match (l1, l2) with
    | ([], _) | (_, []) -> pairs
    | (h1::t1, h2::t2) -> getPairs t1 l2 (pairs @ [(h1, h2)])
  in
  let pairs = getPairs nums1 nums2 [] in
  let sorted_pairs = List.sort compare pairs in
  List.map (fun (x, y) -> [x; y]) (List.take k sorted_pairs)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
