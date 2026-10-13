let rec max_subarray_product (arr : int list) : int =
  match arr with
  | [] -> 0
  | x :: [] -> x
  | x :: y :: rest ->
    let left = max_subarray_product (x :: rest) in
    let right = max_subarray_product (y :: rest) in
    let mid = x * y in
    if left > right then max (left, mid) else max (right, mid)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
