(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
    if k <= 0 then []
    else begin
        let min1 = List.hd nums1 in
        let min2 = List.hd nums2 in
        if min1 < min2 then
            (min1, List.hd nums2) :: k_smallest_pairs nums1 (List.tl nums2) (k - 1)
        else
            (min1, List.hd nums1) :: k_smallest_pairs nums2 (List.tl nums2) (k - 1)
    end

