let rec order_by_points (nums : int list) : int list =
  let sum_digits n =
    let rec sum_digits_aux n acc =
      if n = 0 then acc
      else sum_digits_aux (n / 10) (acc + n mod 10)
    in
    sum_digits_aux n 0
  in
  let compare_by_sum n1 n2 =
    let sum1 = sum_digits n1 in
    let sum2 = sum_digits n2 in
    if sum1 <> sum2 then compare sum1 sum2
    else compare n1 n2
  in
  List.stable_sort compare_by_sum nums


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
