let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list = 
    let rec insert_element (elem : int) (lst : int list) : int list = 
        match lst with 
        | [] -> [elem]
        | h :: t -> if elem <= h then elem :: h :: t else h :: (insert_element elem t)
    in
    let rec merge_lists (lst1 : int list) (lst2 : int list) : int list = 
        match lst1, lst2 with 
        | [], lst2 -> lst2
        | lst1, [] -> lst1
        | h1 :: t1, h2 :: t2 -> if h1 < h2 then h1 :: (merge_lists t1 lst2) else if h1 > h2 then h2 :: (merge_lists lst1 t2) else h1 :: (merge_lists t1 t2)
    in
    let sorted_list2 = List.sort compare test_tup2 in
    merge_lists test_tup1 sorted_list2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
