(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list = 
  let rec merge_sorted_lists l1 l2 = 
    match (l1, l2) with 
    | ([], []) -> []
    | ([], y::ys) -> y :: merge_sorted_lists [] ys
    | (x::xs, []) -> x :: merge_sorted_lists xs []
    | (x::xs, y::ys) -> 
      if x < y then x :: merge_sorted_lists xs l2
      else y :: merge_sorted_lists l1 ys
  in
  let rec helper pairs left right count result = 
    if count = k then result
    else match (pairs, left, right) with 
      | ([], _, _) -> result
      | (_, [], _) -> result
      | (_, l1, []) -> result
      | ((x, y) :: ps, l1, r :: rs) -> 
        let new_pairs = (x, y + r) :: ps in
        let sorted_pairs = merge_sorted_lists (List.sort compare new_pairs) ps in
        helper sorted_pairs (x :: left) (y :: right) (count + 1) (sorted_pairs :: result)
  in
  helper [(List hd nums1, List hd nums2)] (List tl nums1) (List tl nums2) 1 []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:22:20: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list = 
  let rec merge_sorted_lists l1 l2 = 
    match (l1, l2) with 
    | ([], []) -> []
    | ([], y::ys) -> y :: merge_sorted_lists [] ys
    | (x::xs, []) -> x :: merge_sorted_lists xs []
    | (x::xs, y::ys) -> 
      if x < y then x :: merge_sorted_lists xs l2
      else y :: merge_sorted_lists l1 ys
  in
  let rec helper pairs left right count result = 
    if count = k then result
    else match (pairs, left, right) with 
      | ([], _, _) -> result
      | (_, [], _) -> result
      | (_, l1, []) -> result
      | ((x, y) :: ps, l1, y' :: rs) -> 
        let new_pairs = (x, y + y') :: ps in
        let sorted_pairs = merge_sorted_lists (List.sort compare new_pairs) ps in
        helper sorted_pairs (x :: left) (y' :: right) (count + 1) (sorted_pairs :: result)
  in
  helper [(List.hd nums1, List.hd nums2)] (List.tl nums1) (List.tl nums2) 1 []

