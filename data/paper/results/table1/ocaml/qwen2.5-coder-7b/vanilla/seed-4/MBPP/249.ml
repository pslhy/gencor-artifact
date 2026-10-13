let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list = 
    let rec helper acc nums1 nums2 = 
        match nums1 with 
        | [] -> acc
        | x::xs -> 
            if List.mem x nums2 then 
                helper (x :: acc) xs nums2
            else 
                helper acc xs nums2
    in 
    helper [] array_nums1 array_nums2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the intersection of two lists. *)
