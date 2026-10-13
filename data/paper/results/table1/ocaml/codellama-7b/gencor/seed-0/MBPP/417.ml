
let rec group_tuples (input : string list list) : string list list =
  match input with
  | [] -> []
  | hd :: tl ->
    let (first, rest) = List.split hd in
    first :: group_tuples (List.map (fun x -> List.tl x @ [first]) tl)

let rec common_first_elt (input : string list list) : string option =
  match input with
  | [] -> None
  | hd :: tl ->
    let (first, rest) = List.split hd in
    if List.exists (fun x -> List.mem x first) rest then
      Some first
    else
      common_first_elt (group_tuples input)

let rec is_prefix (pre : string list) (suf : string list) : bool =
  match (pre, suf) with
  | ([], _) -> true
  | (_, []) -> false
  | (hd1 :: tl1, hd2 :: tl2) ->
    if hd1 = hd2 then
      is_prefix tl1 tl2
    else
      false

let rec common_first_elt_helper
    (input : string list list)
    (min_len : int)
    (prev_first : string option) : string option =
  match input with
  | [] -> None
  | hd :: tl ->
    let (first, rest) = List.split hd in
    let new_min_len = min min_len (List.length first) in
    let is_match = ref false in
    let new_prev_first = ref prev_first in
    List.iter
      (fun x ->
        if !is_match then
          ()
        else
          let is_prefix = is_prefix first [x] in
          if is_prefix then
            is_match := true;
            new_prev_first := Some x)
      rest;
    if !is_match then
      common_first_elt_helper tl new_min_len !new_prev_first
    else
      common_first_elt_helper (group_tuples input) new_min_len !new_prev_first

let common_first_elt (input : string list list) : string option =
  let min_len = List.fold_left (fun a b -> min a (List.length b)) max_int input in
  common_first_elt_helper input min_len None

let test =
  [(["a"; "b"; "c"]; ["a"; "b"; "c"; "d"]); (["a"; "b"; "c"; "d"]; ["a"; "b"; "c"])]

let () =
  test
  |> List.map (fun x ->
         Printf.printf "Input: %s\nOutput: %s\n\n" (List.to_seq x |> List.of_seq)
           (common_first_elt x
           |> function Some x -> Printf.sprintf "\"%s\"" x | None -> "None"))
  |> ignore

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
