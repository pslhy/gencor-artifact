
let rec neg_nos (list1 : int list) : int list =
match list1 with
| [] -> []
| hd :: tl when hd < 0 -> hd :: neg_nos tl
| _ :: tl -> neg_nos tl
in

let list = [1; 2; 3; 4; -1; -2; -3; -4] in

let result = neg_nos list in

result

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to return the negative numbers in a list. *)
