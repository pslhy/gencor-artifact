let rec get_Inv_Count (arr : int list) : int = 
    let count_inv [x] = 0
    and count_inv [] = 0
    and count_inv (x::xs) = 
        let cnt1 = List.fold_left (fun a b -> a + (if b < x then 1 else 0)) 0 xs
        and cnt2 = count_inv xs
    in
    count_inv arr

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
