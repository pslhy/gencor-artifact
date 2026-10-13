(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
    let rec aux (arr : int list) (rotations : int) : int list =
        if rotations <= 0 then arr else
        let (hd, tl) = (List.head arr, List.tail arr) in
        aux (List.tl arr @ [hd]) (rotations - 1)
    in 
    let arr' = aux arr rotations in
    arr'.[index]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:25: Unbound value "List.head" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
    let rec aux (arr : int list) (rotations : int) : int list =
        if rotations <= 0 then arr
        else aux (List.tl arr @ [List.hd arr]) (rotations - 1)
    in
    let arr' = aux arr rotations in
    arr'.(index)

