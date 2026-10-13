let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
    match ranges with
    | [] -> if index >= List.length arr then -1 else List.nth arr index
    | range::tail ->
      if index < (List.hd range) || index > (List.hd (List.tl range)) then
        find_Element arr tail rotations index
      else
        let new_index = index - (List.hd range) + rotations in
        if new_index < List.length arr then
          List.nth arr new_index
        else
          find_Element arr tail rotations (new_index - (List.length arr))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
