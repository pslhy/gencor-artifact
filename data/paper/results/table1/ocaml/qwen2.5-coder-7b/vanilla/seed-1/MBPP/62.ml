let rec smallest_num (xs : int list) : int = 
  match xs with
  | [] -> raise (Invalid_argument "empty list")
  | [x] -> x
  | h :: t -> min h (smallest_num t)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find smallest number in a list. *)
