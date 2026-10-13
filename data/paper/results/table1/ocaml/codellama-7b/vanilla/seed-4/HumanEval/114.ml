let rec minSubArraySum (nums : int list) : int = 
    (* base case: if nums is empty, return 0 *)
    if List.length nums = 0 then 
        0
    else 
        (* get the first element of nums *)
        let first = List.hd nums in
        (* get the rest of the list *)
        let rest = List.tl nums in
        (* compute the minimum sum of the rest of the list *)
        let minSumRest = minSubArraySum rest in
        (* return the minimum of the minimum sum of the rest of the list and the sum of the first element and the minimum sum of the rest of the list *)
        min first (first + minSumRest)


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
