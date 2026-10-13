
let rec extract_freq (test_list :  (int * int) list) : int =
match test_list with
| [] -> 0
| x :: xs ->
     if List.mem_assoc x xs  then extract_freq xs else 1 + extract_freq xs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
