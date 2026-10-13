let rec max_product_tuple (list1 :  (int * int) list) : int = 
    let abs_product (a, b) = abs (a * b) in
    let max_product acc (a, b) = max acc (abs_product (a, b)) in
    match list1 with
    | [] -> 0
    | h::t -> List.fold_left max_product (abs_product h) t

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list. *)
