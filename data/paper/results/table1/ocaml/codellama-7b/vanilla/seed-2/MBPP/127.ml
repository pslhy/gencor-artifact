let rec multiply_int (x : int) (y : int) : int =
  match x with
  | 0 -> 0
  | n when n > 0 -> n * multiply_int (n - 1) y
  | _ -> raise (Invalid_argument "multiply_int: negative input is not allowed");;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to multiply two integers. *)
