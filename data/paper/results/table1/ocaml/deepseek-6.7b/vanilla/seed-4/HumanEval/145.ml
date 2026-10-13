let rec order_by_points (nums : int list) : int list =
  nums
  |> List.sort ~compare:(fun a b ->
         let sum_a = abs a |> string_of_int |> String.to_list |> List.map (String.of_char >> int_of_string) |> List.fold_left (+) 0 in
         let sum_b = abs b |> string_of_int |> String.to_list |> List.map (String.of_char >> int_of_string) |> List.fold_left (+) 0 in
         let cmp = compare sum_a sum_b in
         if cmp = 0 then compare a b else cmp)


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
