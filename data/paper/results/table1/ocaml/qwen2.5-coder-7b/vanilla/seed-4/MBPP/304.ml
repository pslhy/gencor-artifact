let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int = 
    let rec find_range ranges index =
        match ranges with
        | [] -> -1
        | (start, end_) :: rest when index >= start && index <= end_ -> start, index, end_
        | _ :: rest -> find_range rest index
    in
    let rec apply_rotations rotations start original_index =
        match rotations with
        | 0 -> original_index
        | _ when start <= original_index -> apply_rotations (rotations - 1) (start + 1) original_index
        | _ -> original_index - 1
    in
    let range = find_range ranges index in
    match range with
    | -1 -> arr.(index)
    | start, original_index, end_ -> arr.(apply_rotations rotations start original_index)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
