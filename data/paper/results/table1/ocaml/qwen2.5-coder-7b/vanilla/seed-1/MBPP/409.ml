let rec min_product_tuple (list1 :  (int * int) list) : int = 
  match list1 with
  | [] -> raise (Invalid_argument "List cannot be empty")
  | (a, b)::tail -> 
      let min_tail = min_product_tuple tail in
      if a * b < min_tail then a * b
      else min_tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the minimum product from the pairs of tuples within a given list. *)
