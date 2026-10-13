let rec get_coordinates (test_tup :  int * int) : int list list = 
    match test_tup with
    | (x, y) -> List.cartesian_product [List.flatten [x ; x + 1] ; List.flatten [y ; y + 1]]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)
