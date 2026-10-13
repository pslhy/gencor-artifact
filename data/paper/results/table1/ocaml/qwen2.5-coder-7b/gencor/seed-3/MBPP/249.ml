
let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list = 
    let rec helper nums1 nums2 acc = 
        match (nums1, nums2) with 
        | [], _ | _, [] -> List.rev acc 
        | h1::t1, h2::t2 -> 
            if List.mem h1 nums2 then helper t1 nums2 (h1 :: acc) 
            else helper t1 nums2 acc 
    in helper array_nums1 array_nums2 []

let intersect (nums1 : int array) (nums2 : int array) : int array = 
    let nums1' = List.of_seq (List.to_seq nums1) in
    let nums2' = List.of_seq (List.to_seq nums2) in
    let result = intersection_array nums1' nums2' in
    Array.of_list result

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the intersection of two lists. *)
