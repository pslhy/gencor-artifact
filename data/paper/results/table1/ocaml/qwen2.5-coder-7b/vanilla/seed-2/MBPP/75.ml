let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list = 
    let rec is_divisible x = x mod k = 0 in 
    let rec check_tuple (a, b, c) = 
        is_divisible a && is_divisible b && is_divisible c in 
    List.filter check_tuple test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find tuples which have all elements divisible by k from the given list of tuples. *)
