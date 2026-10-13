let rec count_bidirectional (test_list :  (int * int) list) : int = 
    match test_list with
    | [] -> 0
    | (a,b) :: rest -> if List.mem (b,a) rest then 1 + count_bidirectional rest else count_bidirectional rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
