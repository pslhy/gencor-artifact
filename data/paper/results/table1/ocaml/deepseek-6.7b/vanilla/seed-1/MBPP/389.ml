let rec find_lucas (n : int) : int =
  match n with
  | 0 -> 2
  | 1 -> 1
  | _ when n > 1 -> find_lucas(n-1) + find_lucas(n-2)
  | _ -> raise (Invalid_argument "Input is less than 0")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n'th lucas number. *)
