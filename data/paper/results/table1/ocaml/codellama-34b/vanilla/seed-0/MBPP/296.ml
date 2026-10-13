let rec get_Inv_Count (arr : int list) : int =
    match arr with
    | [] -> 0
    | x :: xs -> 
        let (left, right) = List.split_at (List.length xs / 2) xs in
        let lcount = get_Inv_Count left in
        let rcount = get_Inv_Count right in
        lcount + rcount + List.length (List.filter (fun y -> y < x) xs)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
