let rec max_subarray_product (arr : int list) : int = 
  let rec helper max_end_here min_end_here so_far arr = 
    match arr with
    | [] -> so_far
    | x :: xs -> 
        let max_end_here' = max x (max_end_here * x) in
        let min_end_here' = min x (min_end_here * x) in
        let so_far' = max so_far (max End_of_all x max_end_here') in
        helper max_end_here' min_end_here' so_far' xs
  in
  if arr = [] then 0
  else helper 1 1 (List.hd arr) (List.tl arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
