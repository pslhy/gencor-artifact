let rec count_rotation (arr : int list) : int =
    let rec aux (arr : int list) (count : int) : int * int =
        match arr with
        | [] -> (count, 0)
        | head :: tail ->
            if head = count then
                (count, 0)
            else if head > count then
                let (count', rotations) = aux tail (count + 1) in
                (count', rotations)
            else
                let (count', rotations) = aux tail count in
                (count', rotations + 1)
    in
    let (_, rotations) = aux arr 0 in
    rotations


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
