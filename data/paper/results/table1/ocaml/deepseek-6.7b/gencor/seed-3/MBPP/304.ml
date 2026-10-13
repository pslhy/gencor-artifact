
let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
  let rec rotate_helper (arr : int list) (rotation : int) : int list =
    match rotation with
    | 0 -> arr
    | _ -> rotate_helper (List.tl @@ List.rev arr @ [List.hd arr]) (rotation-1)
  in
  let rec find_rotated_element (arr : int list) (index : int) : int = 
    match index with
    | 0 -> List.hd arr
    | _ -> find_rotated_element (List.tl arr) (index-1)
  in
  let rec range_helper (ranges : int list list) (rotation : int) : int list = 
    match ranges with
    | [] -> []
    | h::t -> let [low; high] = h in
               if (rotation >= low) && (rotation <= high) then [rotation] else range_helper t rotation
  in
  let rotate_index = List.fold_left (+) 0 (range_helper ranges rotations) in
  let rotated_arr = rotate_helper arr (List.length arr - rotate_index) in
  find_rotated_element rotated_arr (index)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
