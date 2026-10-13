let rec max_subarray_product (arr : int list) : int =
  let rec helper (lst : int list) (high : int) : int =
    match lst with
    | [] -> 1
    | h::t -> (h * (helper t high)) in
  let rec find_max_sublist (lst : int list) (low : int) (high : int) (max_product : int) : int =
    match lst with
    | [] -> max_product
    | h::t ->
      let cur_product = helper lst high in
      if cur_product > max_product then
        find_max_sublist t low high cur_product
      else
        find_max_sublist t low high max_product in
  find_max_sublist arr 0 (List.length arr) (List.nth arr 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
