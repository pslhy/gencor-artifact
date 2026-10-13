let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
    if ranges = [] then arr![index]
    else
        let range = List.hd ranges in
        let rotated_range =
            List.mapi (fun i x -> if i < rotations then x else (if index - rotations >= 0 then arr![index - rotations] else arr![List.length arr - rotations + index]))
                      range in
        let rec construct_rotated_array (start : int) (end_ : int) (arr : int list) (rotated_array : int list) : int list =
            if start >= end_ then rotated_array
            else
                let rotated_array = List.rev_append rotated_array [List.nth arr start] in
                construct_rotated_array (start + 1) end_ arr rotated_array
        in
        let rotated_array = construct_rotated_array 0 (List.length range) rotated_range [] in
        let corrected_index = if List.length arr - rotations + index >= List.length arr then List.length arr - rotations + index - (List.length arr) else List.length arr - rotations + index in
        find_Element arr (List.tl ranges) rotations corrected_index


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
