let rec min_product_tuple (list1 :  (int * int) list) : int = 
  let min_product_pair (a, b) (c, d) = min (a * b) (c * d) in
  match list1 with
    | [] -> raise (Invalid_argument "empty list")
    | [pair] -> pair
    | _ :: tail -> List.fold_left min_product_pair (List.hd list1) tail
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the minimum product from the pairs of tuples within a given list. *)
