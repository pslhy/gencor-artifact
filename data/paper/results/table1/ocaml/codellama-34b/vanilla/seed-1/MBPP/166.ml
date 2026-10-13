let rec find_even_pair (a : int list) : int =
match a with
| [] -> 0
| _ -> (List.contains a [0; 2; 4; 6; 8; 10]) + find_even_pair (List.drop a 1)

let count_even_pairs (a : int list) : int =
List.length (List.filter (find_even_pair) a)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)
