let rec max_subarray_product (arr : int list) : int = 
    let rec helper max_so_far min_so_far max_end_here min_end_here lst =
        match lst with
        | [] -> max_so_far
        | h::t ->
            let max_end_here' = max h (max (max_end_here * h) (min_end_here * h)) in
            let min_end_here' = min h (min (max_end_here * h) (min_end_here * h)) in
            let max_so_far' = max max_so_far max_end_here' in
            helper max_so_far' min_end_here' max_end_here' min_end_here' t
    in
    helper (-max_int) max_int 1 1 arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
