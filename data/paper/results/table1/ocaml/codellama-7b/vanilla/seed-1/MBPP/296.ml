let rec get_Inv_Count (arr : int list) : int =
    let rec aux (arr : int list) (count : int) : int * int list =
        match arr with
        | [] -> (count, [])
        | h :: t ->
            let (count', t') = aux t (count + 1) in
            (count', h :: t')
    in
    let (count, _) = aux arr 0 in
    count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
