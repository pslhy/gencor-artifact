let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
  let len = List.length arr in
  let rec rotate_once lst =
    match lst with
    | [] -> []
    | [x] -> [x]
    | x::xs -> List.rev xs @ [x]
  in
  let rec rotate_n n lst =
    if n = 0 then lst
    else rotate_n (n-1) (rotate_once lst)
  in
  let rec adjust_for_range lst range =
    match range with
    | [] -> lst
    | (start::end'::[]) ->
       let (left, middle, right) = List.split3 lst start end' in
       right @ middle @ left
    | _ -> failwith "Range must have either 2 or 0 elements"
  in
  let rec apply_ranges ranges lst =
    match ranges with
    | [] -> lst
    | range::ranges -> apply_ranges ranges (adjust_for_range lst range)
  in
  let rotated = rotate_n rotations arr in
  let adjusted = apply_ranges ranges rotated in
  List.nth adjusted index


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
