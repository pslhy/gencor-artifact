let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list = 
    let rec find_element e lst = 
        match lst with 
        | [] -> false
        | h::t -> if h = e then true else find_element e t
    in
    let rec filter_and_intersect lst1 lst2 =
        match lst1 with
        | [] -> []
        | h::t -> 
            if find_element h lst2 then h :: filter_and_intersect t lst2
            else filter_and_intersect t lst2
    in
    filter_and_intersect array_nums1 array_nums2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the intersection of two lists. *)
