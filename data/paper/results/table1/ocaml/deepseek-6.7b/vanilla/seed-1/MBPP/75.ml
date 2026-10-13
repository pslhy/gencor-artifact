let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list =
  match test_list with
  | [] -> []
  | (x1, x2, x3)::t when x1 mod k = 0 && x2 mod k = 0 && x3 mod k = 0 -> (x1, x2, x3)::find_tuples t k
  | _::t -> find_tuples t k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find tuples which have all elements divisible by k from the given list of tuples. *)
