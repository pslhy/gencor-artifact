let rec minSubArraySum (nums : int list) : int =
    match nums with
    | [] -> 0
    | _ ->
        let min_till_prev = List.fold_left (fun acc el -> min el acc) 0 nums in
        let rest = List.tl nums in
        let sum = min (min_till_prev + List.hd nums) (minSubArraySum rest) in
        min min_till_prev sum


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
