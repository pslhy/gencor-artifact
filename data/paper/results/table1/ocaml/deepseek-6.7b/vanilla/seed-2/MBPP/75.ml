let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list =
  match test_list with
  | [] -> []
  | (a, b, c)::t when a mod k = 0 && b mod k = 0 && c mod k = 0 -> (a, b, c)::find_tuples t k
  | _::t -> find_tuples t k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find tuples which have all elements divisible by k from the given list of tuples. *)
