let rec min_product_tuple (list1 :  (int * int) list) : int = 
    match list1 with
    | [] -> failwith "Empty list"
    | [h] -> let (x, y) = h in x * y
    | h :: t -> let (x, y) = h in let product = x * y in let min_prod = min_product_tuple t in if product < min_prod then product else min_prod


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the minimum product from the pairs of tuples within a given list. *)
