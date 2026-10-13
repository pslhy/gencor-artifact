let rec order_by_points (nums : int list) : int list =
    let rec sum_digits num =
        if num < 0 then sum_digits (-num)
        else if num > 9 then num mod 10 + sum_digits (num / 10)
        else num
    in
    let rec find_min_index nums index min_index min_val =
        match nums with
        | [] -> min_index
        | h::t -> let current_val = sum_digits h in
                  if current_val < min_val then find_min_index t (index + 1) index current_val
                  else if current_val = min_val then if index < min_index then find_min_index t (index + 1) index current_val
                  else find_min_index t (index + 1) min_index min_val
    in
    let rec sort_by_points (nums : int list) (sorted : int list) =
        match nums with
        | [] -> List.rev sorted
        | _ -> let min_index = find_min_index nums 0 0 (sum_digits (List.hd nums)) in
               let new_sorted = List.nth nums min_index :: sorted in
               let new_nums = List.remove_at min_index nums in
               sort_by_points new_nums new_sorted
    in
    sort_by_points nums []


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
