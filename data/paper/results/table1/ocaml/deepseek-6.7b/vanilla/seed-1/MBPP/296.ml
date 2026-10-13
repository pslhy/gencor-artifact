let rec get_Inv_Count (arr : int list) : int =
    match arr with
    | [] -> 0
    | hd::tl -> let (cnt1, inv1) = get_Inv_Count tl in
                let (cnt2, inv2) = count_split_Inv (hd::tl) in 
                (cnt1 + cnt2, inv1 + inv2)

and count_split_Inv (arr : int list) : int * int =
    let len = List.length arr in
    let mid = len/2 in
    let sublist1 = List.take mid arr in 
    let sublist2 = List.rev (List.rev sublist1 @ List.drop mid arr) in
    (len, count_Inv (sublist1, sublist2))

and count_Inv (sublist1 : int list, sublist2 : int list) : int =
    let rec loop (inv : int) (l1 : int list, l2 : int list) : int =
        match (l1, l2) with
        | ([], _) -> inv
        | (_, []) -> inv
        | (h1::t1, h2::t2) when h1 <= h2 -> loop inv (t1, l2)
        | (h1::t1, h2::t2) -> loop (inv + 1) (t1, t2)
    in loop 0 (sublist1, sublist2)
    
let test_list = [1; 20; 6; 4; 5]
let result = get_Inv_Count test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
