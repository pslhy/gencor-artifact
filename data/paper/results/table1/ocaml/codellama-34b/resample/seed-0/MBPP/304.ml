(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
    if rotations = 0 then
        arr.(index)
    else
        find_Element (Array.of_list (Array.to_list arr |> List.fold_right (fun (i, x) acc -> if i < index then (i + 1, x) :: acc else (i + 1, x) :: acc) [])) (ranges |> List.map (fun (i, x) -> (i + 1, x))) (rotations - 1) (index - 1)

