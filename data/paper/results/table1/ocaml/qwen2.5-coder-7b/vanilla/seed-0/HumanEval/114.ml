let rec minSubArraySum (nums : int list) : int = 
  let rec helper nums min_sum current_sum = 
    match nums with
    | [] -> min_sum
    | x :: xs -> 
      let new_sum = min x (current_sum + x) in
      let new_min_sum = min min_sum new_sum in
      helper xs new_min_sum new_sum
  in
  helper nums Int.max_int 0


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
