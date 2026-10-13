let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int = 
    let count_rotations (start, end_) = 
        if start <= index && index <= end_ then rotations + 1 else rotations 
    in
    let new_index = List.fold_left count_rotations 0 ranges in
    List.nth arr (new_index mod (List.length arr))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
