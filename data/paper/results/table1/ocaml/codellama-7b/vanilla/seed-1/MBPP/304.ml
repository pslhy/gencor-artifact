let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
match rotations with
| 0 -> arr.(index)
| _ ->
    let ranges = List.tl ranges in
    let start_idx, end_idx = List.hd ranges in
    if start_idx > index || end_idx < index then
        find_Element (List.nth arr start_idx) ranges rotations (index - start_idx)
    else
        find_Element arr ranges (rotations - 1) (index - start_idx)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
