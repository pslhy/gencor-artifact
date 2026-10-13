let rec max_difference (test_list :  (int * int) list) : int =
  match test_list with
  | []  -> 0
  | (a,b) :: rest -> max (b - a) (max_difference rest)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
