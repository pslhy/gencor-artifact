
let rec sum_squares (lst : float list) : int = 
  List.fold_left (fun acc x -> acc + int_of_float (sqrt ((ceil x) *. (ceil x)))) 0 lst

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a list of numbers. *)
(*     You need to return the sum of squared numbers in the given list, *)
(*     round each element in the list to the upper int(Ceiling) first. *)
(*     Examples: *)
(*     >>> lst [1.0; 2.0; 3.0] *)
(*     14 *)
(*     >>> lst [1.0; 4.0; 9.0] *)
(*     98 *)
(*     >>> lst [1.0; 3.0; 5.0; 7.0] *)
(*     84 *)
(*     >>> lst [1.4; 4.2; 0.0] *)
(*     29 *)
(*     >>> lst [-2.4; 1.0; 1.0] *)
(*     6 *)
