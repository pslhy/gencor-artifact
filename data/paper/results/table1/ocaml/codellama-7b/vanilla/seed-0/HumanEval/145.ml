let rec order_by_points (nums : int list) : int list =
  match nums with
  | [] -> []
  | h :: t ->
    let sum =
      List.fold_left (fun acc n -> acc + n) 0 (digits_sum h)
    in
    let ordered_nums = order_by_points t in
    match List.mem_assoc sum ordered_nums with
    | true -> (sum, h) :: ordered_nums
    | false -> (sum, h) :: (ordered_nums : (int * int) list)
and digits_sum (n : int) : int list =
  let rec digits_sum_aux (n : int) (acc : int list) : int list =
    match n with
    | 0 -> acc
    | _ -> digits_sum_aux (n / 10) ((n mod 10) :: acc)
  in
  digits_sum_aux n []


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
