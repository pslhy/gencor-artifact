let rec check_greater (arr : int list) (number : int) : bool =
  match arr with
  | [] -> false
  | x :: xs -> x > number || check_greater xs number


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the entered number is greater than the elements of the given list. *)
