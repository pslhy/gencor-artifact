
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
        let (left, left_inv) = split_and_merge (List.rev (List.split (List.rev_map List.hd (List.split (List.split arr))))) in
        let (right, right_inv) = split_and_merge (List.rev (List.split (List.rev_map List.hd (List.split (List.split (List.tl (List.rev arr))))))) in
        let (merged, split_inv) = merge_and_count 0 left right in
        (merged, left_inv + right_inv + split_inv)
  in
  snd (split_and_merge arr)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
