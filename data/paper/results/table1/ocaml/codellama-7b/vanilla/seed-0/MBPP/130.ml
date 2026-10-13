let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> failwith "empty list"
  | [x] -> x
  | x :: y :: xs -> if x = y then max_occurrences (y :: xs) else x

let l = [3; 4; 3; 2; 3; 5; 4; 2; 4];
let result = max_occurrences l;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
