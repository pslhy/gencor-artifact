(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
let rec get_Inv_Count (arr : int list) : int =
  let rec merge_and_count split_inv left right =
    split_inv + (List.length left) * (List.length right)
  in
  let rec split_and_merge arr =
    match arr with
    | [] -> ([], 0)
    | [x] -> ([x], 0)
    | _ ->
        let len = List.length arr in
        let mid = len / 2 in
        let (left, left_inv) = split_and_merge (List.take mid arr) in
        let (right, right_inv) = split_and_merge (List.drop mid arr) in
        let (merged, split_inv) = merge_and_count 0 left right in
        (merged, left_inv + right_inv + split_inv)
  in
  let (_, inversions) = split_and_merge arr in
  inversions

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:49: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int =
  let rec merge_and_count split_inv left right =
    split_inv + (List.length left) * (List.length right)
  in
  let rec split_and_merge arr =
    match arr with
    | [] -> ([], 0)
    | [x] -> ([x], 0)
    | _ ->
        let len = List.length arr in
        let mid = len / 2 in
        let (left, left_inv) = split_and_merge (List.init mid (List.nth arr)) in
        let (right, right_inv) = split_and_merge (List.drop mid arr) in
        let (merged, split_inv) = merge_and_count 0 left right in
        (merged, left_inv + right_inv + split_inv)
  in
  let (_, inversions) = split_and_merge arr in
  inversions

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:51: Unbound value "List.drop" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int =
  let rec merge_and_count split_inv left right =
    split_inv + (List.length left) * (List.length right)
  in
  let rec split_and_merge arr =
    match arr with
    | [] -> ([], 0)
    | [x] -> ([x], 0)
    | _ ->
        let len = List.length arr in
        let mid = len / 2 in
        let left, left_inv = split_and_merge (List.init mid (List.nth arr)) in
        let right, right_inv = split_and_merge (List.init (len - mid) (List.nth arr)) in
        let merged, split_inv = merge_and_count 0 left right in
        (merged, left_inv + right_inv + split_inv)
  in
  snd (split_and_merge arr)

