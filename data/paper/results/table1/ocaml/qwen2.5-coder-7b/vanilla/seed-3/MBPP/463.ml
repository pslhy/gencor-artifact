let rec max_subarray_product (arr : int list) : int = 
  let rec helper arr max_current min_current max_global =
    match arr with
    | [] -> max_global
    | x :: xs ->
      let current_max = max x (max (max_current * x) (min_current * x)) in
      let current_min = min x (min (max_current * x) (min_current * x)) in
      helper xs current_max current_min (max max_global current_max)
  in
  helper arr 1 1 (-max_int)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
