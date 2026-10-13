let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list = 
  let rec merge (left : int list list) (right : int list list) : int list list =
    match left, right with
    | [], _ -> right
    | _, [] -> left
    | x::xs, y::ys ->
      if List.length x <= List.length y then x :: merge xs (y::ys)
      else y :: merge (x::xs) ys
  in
  let rec take n lst =
    if n <= 0 || lst = [] then []
    else match lst with
           | x::xs -> x :: take (n-1) xs
           | _ -> []
  in
  let rec pairs lst1 lst2 acc =
    match lst1, lst2 with
    | [], _ | _, [] -> acc
    | x::xs, y::ys -> pairs xs ys (merge acc [[x; y]])
  in
  let all_pairs = pairs nums1 nums2 [] in
  take k all_pairs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
