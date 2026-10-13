let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list = 
    let rec merge_two_lists l1 l2 = 
        match (l1, l2) with
        | ([], _) -> l2
        | (_, []) -> l1
        | (h1::t1, h2::t2) -> if h1 + h2 <= h2 + h1 then h1::merge_two_lists t1 (h2::t2) else h2::merge_two_lists (h1::t1) t2
    and merge lsts =
        match lsts with
        | [] -> []
        | [l] -> l
        | h::t -> merge_two_lists h (merge t)
    in
    let pairs =
        List.map (fun x -> List.map (fun y -> [x; y]) nums2) nums1
        |> List.flatten
    in
    let sorted_pairs = merge pairs in
    match List.split_n k sorted_pairs with
    | (result, _) -> result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
