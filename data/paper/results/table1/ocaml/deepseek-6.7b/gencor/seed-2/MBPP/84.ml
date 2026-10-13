
let rec sequence (n : int) : int =
  if n <= 0 then invalid_arg "Only positive integers are permitted."
  else if n = 1 then 1
  else if n = 2 then 1
  else let rec seq = function
      | 1 -> 1
      | 2 -> 1
      | n -> let p = seq (Parsing.peek_val (Obj.repr (n-1))) in
             (seq (p)) + (seq (n - p))
   in seq n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth number in the newman conway sequence. *)
