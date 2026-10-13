let rec max_subarray_product (arr : int list) : int =
  let rec helper (prev_max : int) (prev_min : int) (cur_max : int) (cur_min : int) (max_so_far : int) (rest : int list) : int =
    match rest with
    | [] -> max_so_far
    | hd::tl ->
        let max_temp = max cur_max (max (prev_max * hd) (prev_min * hd))
        and min_temp = min cur_min (min (prev_max * hd) (prev_min * hd)) 
        in
        let cur_max = if max_temp < 0 then 0 else max_temp
        and cur_min = if min_temp < 0 then 0 else min_temp
        in
        let max_so_far = max max_so_far cur_max
        and prev_max = cur_max
        and prev_min = cur_min 
        in
        helper prev_max prev_min cur_max cur_min max_so_far tl
  in
  helper 1 1 1 1 (List.hd arr) (List.tl arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
