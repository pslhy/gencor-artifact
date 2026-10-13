(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
    match ranges with
    | [] -> failwith "No matching range found"
    | h :: t ->
        let low = List.nth h 0 in
        let high = List.nth h 1 in
        if low <= index && index <= high then
            List.nth arr (index - low + rotations)
        else
            find_Element arr t rotations index

