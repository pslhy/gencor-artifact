let rec max_sub_array_sum (a : int list) (size : int) : int =
    if size == 0 then 0
    else
        let (_, sum, _, _, _) =
            List.fold_left (fun (curr, max, max_start, max_end, curr_start) i ->
                if curr < 0 then
                    if i > curr then (i, i, curr_start, curr_start+1, curr_start+1)
                    else (i, max, max_start, max_end, curr_start+1)
                else
                    if (i + curr) < i then (i, max, max_start, max_end, curr_start+1)
                    else (curr + i, max_sub_array_sum [max; max_sub_array_sum [max; i]], max_start, curr_start+1, curr_start+1)
            ) (0, -1_000_000, 0, 0, 0) a
        in sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
