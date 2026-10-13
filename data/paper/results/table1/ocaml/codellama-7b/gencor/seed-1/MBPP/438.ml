
let rec count_bidirectional (test_list :  (int * int) list) : int =
match test_list with
| [] -> 0
| (x,y), tt :: rest ->
if x = y then 1 + count_bidirectional tt
else count_bidirectional tt
;;

let (x,y) = (1,2);;
let (x,y) = (2,1);;
let (x,y) = (1,1);;
count_bidirectional [(x,y); (x,y); (x,y)];;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
