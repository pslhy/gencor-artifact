let rec get_Inv_Count (arr : int list) : int = 
  let rec mergeCount inversions a1 a2 remain =
    match a1, a2 with
    | [], [] -> (inversions, remain)
    | [], x::xs -> (inversions, x::xs@remain)
    | x::xs, [] -> (inversions, x::xs@remain)
    | x::xs, y::ys when x <= y -> 
        mergeCount inversions xs y::ys (x::remain)
    | x::xs, y::ys -> 
        mergeCount (inversions + List.length xs) y::ys xs (x::remain)
  in
  let rec aux count lst = 
    match lst with
    | [] | [_] -> (0, lst)
    | _ -> 
        let mid = List.length lst / 2 in
        let (c1, l1) = aux count (List.take lst mid) in
        let (c2, l2) = aux count (List.drop lst mid) in
        let (c3, l3) = mergeCount (c1 + c2) l1 l2 [] in
        (c3, l3)
  in
  let (_, inversions) = aux 0 arr in
  inversions


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
