let rec sum_list (lst1 : int list) (lst2 : int list) : int list =
    match lst1, lst2 with
    | [], [] -> []
    | h1::t1, h2::t2 -> (h1 + h2) :: sum_list t1 t2
    | _, _ -> invalid_arg "Input lists have different lengths"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function takes as input two lists [a_1,...,a_n], [b_1,...,b_n] and returns [a_1+b_1,...,a_n+b_n]. *)
