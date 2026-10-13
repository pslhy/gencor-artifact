let rec max_product_tuple (list1 :  (int * int) list) : int = 
  let rec helper pairs max = match pairs with
    | [] -> max
    | (x, y) :: rest -> 
      let product = abs (x * y) in
      let new_max = if product > max then product else max in
      helper rest new_max
  in
  helper list1 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list. *)
