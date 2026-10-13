let rec minSubArraySum (nums : int list) : int = 
    let rec loop nums current_min global_min = 
        match nums with 
        | [] -> global_min
        | x::xs -> 
            let current_sum = min x (current_min + x) in 
            loop xs current_sum (min global_min current_sum) 
    in 
    loop nums max_int max_int


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
