let rec minSubArraySum (nums : int list) : int = 
    (* base case: if nums only contains one element, return that element *)
    match nums with
    | [x] -> x
    | _ ->
        (* find the minimum sum of any non-empty sub-list of nums *)
        let minSum = ref 0 in
        for i = 0 to List.length nums - 2 do
            for j = i + 1 to List.length nums - 1 do
                minSum := min !minSum (List.fold_left (fun acc x -> acc + x) 0 (List.sub nums i (j - i + 1)))
            done
        done;
        !minSum


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
