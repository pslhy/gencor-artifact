let rec get_Inv_Count (arr : int list) : int = 
  let rec merge_and_count (left : int list) (right : int list) : (int list * int) = 
    match (left, right) with 
    | ([], r) -> (r, 0) 
    | (l, []) -> (l, 0) 
    | (x::xs, y::ys) -> 
      if x <= y 
      then let (sorted, count) = merge_and_count xs right in 
           ((x :: sorted), count)
      else let (sorted, count) = merge_and_count left ys in 
           ((y :: sorted), count + List.length left) in 
  let rec split (lst : int list) : (int list * int list) = 
    match lst with 
    | [] -> ([], []) 
    | [x] -> ([x], []) 
    | x::y::rest -> 
      let (left, right) = split rest in 
      ((x :: left), (y :: right)) in  
  let (_, count) = split arr |> fun (left, right) -> merge_and_count left right in 
  count;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
