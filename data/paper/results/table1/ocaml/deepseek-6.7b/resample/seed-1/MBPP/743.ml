(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
let rec rotate_right (list : int list) (m : int) : int list =
  match m with
  | 0 -> list
  | _ ->
    let reversed_list = List.rev list in
    let reversed_rotated_list = List.tl reversed_list in
    List.rev reversed_rotated_list

let rec rotate_left (list : int list) (m : int) : int list =
  match m with
  | 0 -> list
  | _ ->
    let reversed_list = List.rev list in
    let reversed_rotated_list = List.rev reversed_rotated_list in
    List.rev reversed_rotated_list

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:42: Unbound value "reversed_rotated_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rotate_right (list : int list) (m : int) : int list =
  match m with
  | 0 -> list
  | _ ->
    List.rev (List.tl (List.rev list))

let rec rotate_left (list : int list) (m : int) : int list =
  match m with
  | 0 -> list
  | _ -> 
    let length = List.length list in
    let cut_point = length - m in
    let first_part, second_part = List.split_n list cut_point in
    List.rev_append second_part first_part

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:35: Unbound value "List.split_n" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rotate_right (list : int list) (m : int) : int list =
  match m with
  | 0 -> list
  | _ ->
    List.rev (List.tl (List.rev list))

let rec rotate_left (list : int list) (m : int) : int list =
  match m with
  | 0 -> list
  | _ -> 
    let length = List.length list in
    let cut_point = length - m in
    let first_part, second_part = List.split_at list cut_point in
    List.rev_append second_part first_part

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:35: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rotate_right (list : int list) (m : int) : int list =
  match m with
  | 0 -> list
  | _ -> List.rev (List.tl (List.rev list))

let rec rotate_left (list : int list) (m : int) : int list =
  match m with
  | 0 -> list
  | _ -> 
    let n = List.length list in
    if n < 2 then list
    else
      let split = list |> List.mapi (fun i e -> i, e) in
      let pivot = n - m in
      let first, second = List.partition (fun (i, _) -> i < pivot) split in
      List.append (snd (List.split second)) (fst (List.split first)) |> List.map snd

