let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
  match nums1 with
  | [] | [] -> []
  | x :: xs when k = 1 -> [[x]]
  | x :: xs ->
    let rec aux (k' : int) (ys : int list) (acc : int list list) =
      match ys with
      | [] -> if k' = 0 then acc else aux k' nums2 [[x]] acc
      | y :: ys' ->
        let pair = [x; y] in
        if List.mem pair acc then
          aux k' ys' acc
        else
          aux k' ys' (pair :: acc)
    in
    aux k nums2 []
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
