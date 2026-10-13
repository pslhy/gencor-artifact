let rec max_Abs_Diff (arr : int list) : int = 
  let rec helper (min_val : int) (max_val : int) (lst : int list) : int = 
    match lst with 
    | [] -> max_val - min_val
    | h::t -> 
        let new_min_val = min min_val h in
        let new_max_val = max max_val h in
        helper new_min_val new_max_val t
  in
  match arr with 
  | [] | [_] -> 0
  | _ -> helper (List.hd arr) (List.hd arr) (List.tl arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
