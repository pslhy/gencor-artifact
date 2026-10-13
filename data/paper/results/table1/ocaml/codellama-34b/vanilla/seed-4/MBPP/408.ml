let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list = 
    (* base case: k = 0 or either list is empty *)
    if k = 0 || nums1 = [] || nums2 = [] then
        []
    (* recursive case: find smallest pair, combine it with the rest of the lists *)
    else
        let (smallest_pair, rest1, rest2) = find_smallest_pair (nums1, nums2) in
        smallest_pair :: k_smallest_pairs rest1 rest2 (k - 1)

and find_smallest_pair (nums1 : int list) (nums2 : int list) : int list * int list * int list =
    (* search for the smallest pair in the two lists *)
    match nums1, nums2 with
    | [], [] -> failwith "Unexpected error: both lists are empty"
    | [], [y] -> ([], [], [y])
    | [x], [] -> ([], [x], [])
    | x :: xs, y :: ys ->
        if x <= y then
            ([], [], [y])
        else
            (xs, [], [y])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
