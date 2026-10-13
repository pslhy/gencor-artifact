let rec max_product (arr : int list) : int = 
  let rec helper arr max_prod prev =
    match arr with
      [] -> max_prod
    | x :: xs -> 
      let with_prev = prev * x in
      let without_prev = max_prod in
      let max_with_x = max with_prev without_prev in
      helper xs (max max_prod max_with_x) (if max_with_x = with_prev then prev * x else prev)
  in
  helper arr 0 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
