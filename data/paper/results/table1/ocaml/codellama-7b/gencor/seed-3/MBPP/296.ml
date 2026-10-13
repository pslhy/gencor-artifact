
let rec get_Inv_Count (arr : int list) : int =
  if List.length arr <= 1 then
    0
  else
    let left_arr = List.hd arr :: List.tl arr in
    let right_arr = List.tl arr in
    let left_count = get_Inv_Count left_arr in
    let right_count = get_Inv_Count right_arr in
    let merge_count = get_Inv_Count (get_Inv_Count) in
    1 + left_count + right_count

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
