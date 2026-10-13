let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list = 
    let rec merge_sort li = 
        let rec merge l1 l2 = 
            match (l1, l2) with 
            | ([], l) | (l, []) -> l1 @ l2
            | (h1::t1, h2::t2) -> if h1 <= h2 then h1 :: merge t1 l2 else h2 :: merge l1 t2
        and split l = 
            let rec halve l acc1 acc2 = 
                match l with 
                | [] | [_] -> (acc1, acc2)
                | h::t -> halve t (h::acc1) acc2
            in split l [] []
        in 
        let rec rec_merge l = 
            match l with 
            | [] | [_] -> l
            | _ -> let (left, right) = split l in merge (rec_merge left) (rec_merge right)
        in 
        rec_merge li
    in 
    let rec union lst1 lst2 = 
        match (lst1, lst2) with 
        | ([], lst) | (lst, []) -> lst
        | (hd1::tl1, hd2::tl2) -> 
            if hd1 < hd2 then hd1 :: union tl1 lst2
            else if hd1 > hd2 then hd2 :: union lst1 tl2
            else hd1 :: union tl1 tl2
    in 
    merge_sort (union test_tup1 test_tup2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
