let rec sum_Of_Subarray_Prod (arr : int list) : int = 
  let rec helper (subset : int list) (prod : int) (sum : int) : int =
    match subset with
    | [] -> sum
    | x::xs -> 
        let new_sum = sum + prod * x in
        helper xs (prod * x) new_sum
  in
  let rec main_helper (lst : int list) (prod : int) (sum : int) : int =
    match lst with
    | [] -> sum
    | x::xs ->
        let new_sum = helper [x] x sum in
        main_helper xs 1 new_sum
  in
  main_helper arr 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
