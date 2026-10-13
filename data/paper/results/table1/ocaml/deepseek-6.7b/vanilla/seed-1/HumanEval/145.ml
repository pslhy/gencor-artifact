let rec order_by_points (nums : int list) : int list =
    match nums with
    | [] -> []
    | _ ->
        let min_num = List.fold_left (fun a b -> if (abs a) < (abs b) then a else b) (List.hd nums) nums in
        let filtered = List.filter (fun a -> a = min_num) nums in
        min_num :: order_by_points (List.filter (fun a -> a <> min_num) nums)


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
