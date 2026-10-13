let rec square_nums (nums : int list) : int list =
  match nums with
  | [] -> []
  | num :: rest -> num * num :: square_nums rest

square_nums [1; 2; 3; 4];;
(* Output: [1; 4; 9; 16] *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find squares of individual elements in a list. *)
