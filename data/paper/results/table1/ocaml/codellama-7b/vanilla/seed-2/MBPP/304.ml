let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
    let n = List.length ranges in
    if n = 0 || rotations < 0 || index < 0 || index >= (List.length arr) then
        raise (Invalid_argument "Invalid input")
    else if rotations = 0 then
        List.nth arr index
    else
        find_Element arr (ranges @ [ranges.(n - 1)]) (rotations - 1) (List.nth ranges index)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
