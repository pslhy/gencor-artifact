let rec comb_sort (nums : int list) : int list =
    if nums = [] then [] else begin
        let sorted = merge (List.sort nums)
        if sorted = nums then sorted else comb_sort sorted
    end

let rec merge (nums1 : int list) (nums2 : int list) : int list =
    match nums1, nums2 with
    | [], _ -> nums2
    | _, [] -> nums1
    | h1::s1, h2::s2 ->
        if h1 <= h2 then h1 :: (merge s1 nums2) else h2 :: (merge nums1 s2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
