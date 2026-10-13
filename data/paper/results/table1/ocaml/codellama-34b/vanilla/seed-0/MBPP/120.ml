let rec max_product_tuple (list1 :  (int * int) list) : int =
  match list1 with
  | [] -> 0
  | [ (a, b) ] -> abs (a * b)
  | (a, b) :: (c, d) :: rest ->
      let p1 = abs (a * c) in
      let p2 = abs (b * d) in
      let max_product = if p1 > p2 then p1 else p2 in
      let rest_product = max_product_tuple rest in
      if max_product > rest_product then max_product else rest_product


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list. *)
