let rec rear_extract (test_list :  (int * string * int) list) : int list = 
  match test_list with
  | [] -> []
  | (a, b, c) :: rest -> c :: rear_extract rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list of tuples and returns a list containing the rear element of each tuple. *)
