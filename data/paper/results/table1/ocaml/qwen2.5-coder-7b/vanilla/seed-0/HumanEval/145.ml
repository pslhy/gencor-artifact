let rec order_by_points (nums : int list) : int list = 
  let digit_sum n = 
    let rec sum acc n = 
      if n = 0 then acc
      else sum (acc + abs (n mod 10)) (n / 10)
    in
    sum 0 (abs n)
  in
  let indexed = List.mapi (fun i x -> (i, x)) nums in
  let sorted_by_sum = List.sort compare ((List.sort (fun (i1, _) (i2, _) -> compare (digit_sum i1) (digit_sum i2)) indexed)) in
  List.map (fun (_, x) -> x) sorted_by_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which sorts the given list of integers *)
(*     in ascending order according to the sum of their digits. *)
(*     Note: if there are several items with similar sum of their digits, *)
(*     order them based on their index in original list. *)
(*     For example: *)
(*     >>> order_by_points [1; 11; (-1); (-11); (-12)] *)
(*     [(-1); (-11); 1; (-12); 11] *)
(*     >>> order_by_points [] *)
(*     [] *)
