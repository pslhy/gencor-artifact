(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
let rec get_Inv_Count (arr : int list) : int =
    let rec aux (arr : int list) (count : int) : int * int =
        match arr with
        | [] -> (count, 0)
        | head :: tail ->
            if tail = [] then
                (count, 0)
            else
                let (leftCount, rightCount) = aux tail (count + 1) in
                let (inversionCount, _) = aux tail rightCount in
                (leftCount + inversionCount, inversionCount)
    in
    let (leftCount, inversionCount) = aux arr 0 in
    leftCount + inversionCount

