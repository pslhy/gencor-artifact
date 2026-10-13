let rec max_subarray_product (arr : int list) : int = 
  let rec helper (curr_max : int) (curr_min : int) (result : int) (lst : int list) : int = 
    match lst with
    | [] -> result
    | x::xs -> 
      let new_max = max x (max (curr_max * x) (curr_min * x)) in
      let new_min = min x (min (curr_max * x) (curr_min * x)) in
      helper new_max new_min (max result new_max) xs
  in
  match arr with
  | [] -> failwith "Empty list"
  | x::xs -> helper x x x xs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
