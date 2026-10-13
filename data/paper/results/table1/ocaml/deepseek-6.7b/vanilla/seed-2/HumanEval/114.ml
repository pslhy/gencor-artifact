let rec minSubArraySum (nums : int list) : int =
  let sum = List.fold_left (+) 0 in
  let rec helper l min_sum cur_sum cur_min =
    match l with
    | [] -> cur_min
    | h::t -> let new_sum = cur_sum + h in
              let new_min = if new_sum < cur_min then new_sum else cur_min in
              helper t new_sum new_min new_min
  in
  let total_sum = sum nums in
  helper nums total_sum 0 total_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of integers nums, find the minimum sum of any non-empty sub-list *)
(*     of nums. *)
(*     Example *)
(*     >>> minSubArraySum [2; 3; 4; 1; 2; 4] *)
(*     1 *)
(*     >>> minSubArraySum [(-1); (-2); (-3)] *)
(*     (-6) *)
