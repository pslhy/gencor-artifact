let rec get_Inv_Count (arr : int list) : int =
  match arr with
  | [] -> 0
  | h :: t -> 
    let (left, right) = List.takedrop (List.length arr / 2) arr in
    let left_invs = get_Inv_Count left in
    let right_invs = get_Inv_Count right in
    let mid_invs =
      List.fold_left
        (fun acc (x, y) ->
           if x > y then acc + 1 else acc)
        0
        (List.combine left right)
    in
    left_invs + right_invs + mid_invs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
