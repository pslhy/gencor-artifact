
let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
    let rec aux (arr : int list) (rotations : int) : int list =
        if rotations <= 0 then arr else
        let (hd, tl) = (List.hd arr, List.tl arr) in
        (List.tl tl) @ (hd :: List.hd (tl))
    in
    let arr' = aux arr rotations in
    arr'.(index - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
