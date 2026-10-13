let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list = 
    List.filter (fun (x, y, z) -> (x mod k = 0) && (y mod k = 0) && (z mod k = 0)) test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find tuples which have all elements divisible by k from the given list of tuples. *)
