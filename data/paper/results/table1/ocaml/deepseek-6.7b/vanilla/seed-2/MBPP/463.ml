let rec max_subarray_product (arr : int list) : int =
  let rec helper (arr : int list) (pos_prod : int) (neg_prod : int) (max_prod : int) : int =
    match arr with
    | [] -> max_prod
    | head :: tail ->
        let cur_max =
          if head > 0 then
            pos_prod * head
          else
            neg_prod * head in
        let (new_pos_prod, new_neg_prod) =
          if head > 0 then
            (cur_max, if neg_prod < 0 then pos_prod * head else 1)
          else
            (if pos_prod > 0 then neg_prod * head else 1, cur_max) in
        helper tail new_pos_prod new_neg_prod (if cur_max > max_prod then cur_max else max_prod)
  in
  helper arr 1 1 (if List.length arr = 0 then 0 else min_int);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
