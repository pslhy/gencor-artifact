
let rec get_Inv_Count (arr : int list) : int =
    match arr with
    | [] -> 0
    | hd::tl -> let (cnt1, inv1) = get_Inv_Count tl in
                let (cnt2, inv2) = get_Inv_Count (List.filter (fun x -> x < hd) tl) in
                (cnt1 + cnt2 + 1, inv1 + inv2 + List.length (List.filter (fun x -> x < hd) tl))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
