let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list =
match test_list with
| [] -> []
| hd :: tl ->
let (t1, t2, t3) = hd in
if t1 mod k = 0 && t2 mod k = 0 && t3 mod k = 0 then hd :: (find_tuples tl k) else (find_tuples tl k) in
let divisible_tuples = find_tuples [(1,2,3); (4,5,6); (7,8,9); (10,11,12); (13,14,15)] 3 in
divisible_tuples;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find tuples which have all elements divisible by k from the given list of tuples. *)
