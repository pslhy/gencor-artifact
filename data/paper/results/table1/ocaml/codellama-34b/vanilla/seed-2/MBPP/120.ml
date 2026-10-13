let rec max_product_tuple (list1 :  (int * int) list) : int =
    match list1 with
    | [] -> 0
    | (x, y) :: rest -> x * y + (max_product_tuple rest)
   
   


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list. *)
