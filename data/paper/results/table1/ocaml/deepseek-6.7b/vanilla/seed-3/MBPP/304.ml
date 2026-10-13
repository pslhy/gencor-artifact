let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
  let rec rotate_helper (arr : int list) (rotation : int) : int list =
    match rotation with
    | 0 -> arr
    | _ -> rotate_one_to_left arr
  and rotate_one_to_left (arr : int list) : int list =
    match arr with
    | [] -> []
    | h :: t -> t @ [h]
  in
  let rotated_arr = rotate_helper arr rotations in
  let rec find_index (rotated_arr : int list) (ranges : int list list) (index : int) : int =
    match ranges with
    | [] -> -1
    | range :: tail ->
        if List.nth range 0 <= index && index <= List.nth range 1 then
          List.nth rotated_arr index
        else
          find_index rotated_arr tail index
  in
  find_index rotated_arr ranges index

let rec rotate_one_to_right (arr : int list) : int list =
  match arr with
  | [] -> []
  | h :: t -> List.rev (rotate_one_to_left (List.rev t)) @ [h]

let find_Element_without_rotation (arr : int list) (index : int) : int =
  match arr with
  | [] -> -1
  | _ -> List.nth arr index


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
