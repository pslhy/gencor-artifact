let rec minSubArraySum (nums : int list) : int =
    match nums with
    | [] -> 0
    | [x] -> x
    | x::xs ->
        let min_sub_array = minSubArraySum xs in
        let sum = x + min_sub_array in
        if sum < min_sub_array then sum else min_sub_array


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
