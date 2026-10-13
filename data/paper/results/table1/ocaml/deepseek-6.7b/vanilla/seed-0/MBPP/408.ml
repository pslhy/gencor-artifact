let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
    let nums1 = List.sort (fun (a,_) (b,_) -> a - b) (List.map (fun x -> (x, 0)) nums1) in
    let nums2 = List.sort (fun (_,a) (_,b) -> a - b) (List.map (fun x -> (0,x)) nums2) in
    let rec helper nums1 nums2 acc count =
        match (nums1, nums2) with
        | ([], _) -> acc
        | (_, []) -> acc
        | ((x,i)::xs, (j,y)::ys) ->
            if count < k then
                let pair = [x;y] in
                helper xs ys ((pair :: acc) @ acc) (count + 1)
            else
                helper xs ys (acc @ acc) count
    in
    helper nums1 nums2 [] 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
