let rec max_subarray_product (arr : int list) : int =
  match arr with
  | [] -> 1
  | x :: [] -> x
  | x :: y :: rest ->
    let rec find_max_product (arr : int list) (prefix_product : int) (suffix_product : int) : int =
      match arr with
      | [] -> max prefix_product suffix_product
      | x :: [] -> max (prefix_product * x) suffix_product
      | x :: y :: rest ->
        let new_prefix_product = prefix_product * x in
        let new_suffix_product = suffix_product * y in
        find_max_product (rest) new_prefix_product (max new_prefix_product new_suffix_product)
    in
    let prefix_product = max_subarray_product (x :: rest) in
    let suffix_product = max_subarray_product (y :: rest) in
    find_max_product (x :: y :: rest) (prefix_product * x) (suffix_product * y)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
