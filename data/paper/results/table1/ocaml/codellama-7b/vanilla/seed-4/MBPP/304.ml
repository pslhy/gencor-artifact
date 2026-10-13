let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
  if rotations = 0 then
    List.nth arr (List.nth ranges 0)
  else
    let curr_range = List.nth ranges (rotations - 1) in
    let rotated_arr = Array.sub arr curr_range (List.nth ranges (rotations - 1) + 1) in
    let rotated_arr2 = Array.sub rotated_arr 0 (curr_range - index + 1) in
    let rotated_arr3 = Array.map (fun i -> (i - curr_range + 1) mod curr_range + 1) rotated_arr2 in
    List.nth rotated_arr3 index


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
