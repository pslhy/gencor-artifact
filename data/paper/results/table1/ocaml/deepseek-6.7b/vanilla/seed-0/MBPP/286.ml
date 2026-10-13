let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
    let rec repeats lst num =
       match num with
       | 0 -> []
       | 1 -> lst
       | _ -> lst @ repeats lst (num - 1)
    in
    let a' = repeats a k in
    let rec kadane_algo lst total_max current_max start end_index =
        match lst with
        | [] -> (total_max, start, end_index)
        | x::xs ->
          let current_max' = max x (current_max + x) in
          let start' = if current_max' = x then 0 else (start+1) in
          let total_max' = 
                if current_max' > total_max
                then current_max'
                else total_max
          in
          kadane_algo xs total_max' current_max' start' ((if current_max' = x then 0 else (start'+1)) mod n)
    in
    let (res, start, end_index) = kadane_algo a' 0 0 0 0 in
    res


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
