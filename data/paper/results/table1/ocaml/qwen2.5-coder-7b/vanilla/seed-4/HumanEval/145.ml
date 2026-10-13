let rec order_by_points (nums : int list) : int list = 
  let sum_digits n = 
    let rec sum n acc = 
      if n = 0 then acc 
      else sum (n / 10) (acc + abs (n mod 10)) 
    in sum (abs n) 0 
  in 
  let numbered = List.mapi (fun i n -> (i, n)) nums in 
  let sorted = List.sort (fun (i1, n1) (i2, n2) -> 
      match compare (sum_digits n1) (sum_digits n2) with 
      | 0 -> compare i1 i2 
      | x -> x) numbered in 
  List.map snd sorted


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
