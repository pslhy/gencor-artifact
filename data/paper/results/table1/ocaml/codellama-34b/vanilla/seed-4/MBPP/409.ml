let rec min_product_tuple (list1 :  (int * int) list) : int = 
    (* base case: if only one item in the list, return product of it's elements *)
    match list1 with
    | [(a1, b1)] -> a1 * b1
    | list1 :: rest -> min_product_tuple(rest)

(* find minimum product among the tuples and return the pair *)    
let min_product (list2 : (int * int) list) : int = 
    min_product_tuple(list2)



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the minimum product from the pairs of tuples within a given list. *)
