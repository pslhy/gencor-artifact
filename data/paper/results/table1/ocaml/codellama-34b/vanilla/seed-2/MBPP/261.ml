let rec division_elements (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
    match test_tup1, test_tup2 with
    | x, y when x > 0 && y > 0 -> (x - 1, y - 1)
    | _ -> (0, 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and performs mathematical division operation element-wise across the given tuples. *)
