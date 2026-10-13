let rec min_product_tuple (list1 :  (int * int) list) : int =
  match list1 with
  | [] -> raise Not_found
  | [(n1, n2)] -> n1 * n2
  | (n1, n2)::tail -> min (n1 * n2) (min_product_tuple tail)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the minimum product from the pairs of tuples within a given list. *)
