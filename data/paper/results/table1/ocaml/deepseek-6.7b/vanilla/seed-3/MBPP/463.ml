let rec max_subarray_product (arr : int list) : int =
  let rec helper (acc_max : int) (acc_min : int) (max_product : int) (arr : int list) : int  =
    match arr with
    | [] -> max_product
    | hd::tl -> let new_max = if hd > 0 then acc_max * hd else acc_min * hd in
                let new_min = if hd > 0 then acc_min * hd else acc_max * hd in
                helper new_max new_min (max max_product new_max) tl
  in
  helper 1 1 (List.hd arr) (List.tl arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
