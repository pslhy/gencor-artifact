let rec smallest_num (xs : int list) : int =
  match xs with
  | [] -> raise (Failure "Empty list")
  | [x] -> x
  | x :: xs ->
      let min_of_rest = smallest_num xs in
      if x < min_of_rest then x else min_of_rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find smallest number in a list. *)
