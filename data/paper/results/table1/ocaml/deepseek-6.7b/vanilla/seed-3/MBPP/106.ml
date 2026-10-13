let rec add_lists (test_list : int list) (test_tup :  int * int) :  int * int * int * int * int =
  match test_tup with
  | (a, b, c, d, e), test_list -> a, b, c, d, e, test_list 
  | _ -> failwith "Invalid argument: Tuple length doesn't match list length"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to append the given list to the given tuples. *)
