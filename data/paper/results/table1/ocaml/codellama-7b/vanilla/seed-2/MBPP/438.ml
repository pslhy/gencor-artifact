let rec count_bidirectional (test_list :  (int * int) list) : int =
    match test_list with
    | [] -> 0
    | (a, b) :: t when a = b -> 1 + count_bidirectional t
    | (a, b) :: t -> count_bidirectional t

let count = count_bidirectional [(1,2); (2,1); (3,4); (4,3)]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
