let rec minSubArraySum (nums : int list) : int =
    match nums with
    | [] -> 0
    | _ :: [] -> List.fold_left (+) 0 nums
    | _ ->
        let min_acc = ref (List.hd nums) in
        let (min_acc, _) =
            List.fold_left
                (fun (min_acc, curr_sum) x ->
                    if curr_sum = 0 then
                        (x, x)
                    else
                        (min min_acc curr_sum, curr_sum + x))
                (min_acc, 0) (List.tl nums) ;
        min min_acc !min_acc


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
