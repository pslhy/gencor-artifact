let rec order_by_points (nums : int list) : int list = 
  let digit_sum n = 
    let str = string_of_int (abs n) in
    List.fold_left (fun acc d -> acc + (Char.code d - Char.code '0')) 0 (Str.chars str) in
  List.mapi (fun i x -> (i, x, digit_sum x)) nums
  |> List.sort compare
  |> List.map (fun (_, x, _) -> x)


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
