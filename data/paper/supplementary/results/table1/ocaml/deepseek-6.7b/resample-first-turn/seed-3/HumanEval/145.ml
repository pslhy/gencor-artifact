let rec order_by_points (nums : int list) : int list =
  List.sort (fun a b ->
    let (a_digits, b_digits) = (abs a, abs b) in
    let (a_sum, b_sum) = (List.fold_left (+) 0 (List.map int_of_char (String.to_list (string_of_int a_digits))),
                         List.fold_left (+) 0 (List.map int_of_char (String.to_list (string_of_int b_digits)))) in
    match (a_sum - b_sum, a - b) with
      | 0, _ -> b - a
      | _, _ -> a_sum - b_sum)
    nums


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
