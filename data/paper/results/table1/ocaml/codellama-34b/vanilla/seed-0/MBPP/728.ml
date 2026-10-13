let rec sum_list (lst1 : int list) (lst2 : int list) : int list =
  match lst1, lst2 with
  | [], [] -> []
  | x :: xs, y :: ys -> (x + y) :: sum_list xs ys
  | _, _ -> failwith "Lists must be of the same length"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function takes as input two lists [a_1,...,a_n], [b_1,...,b_n] and returns [a_1+b_1,...,a_n+b_n]. *)
