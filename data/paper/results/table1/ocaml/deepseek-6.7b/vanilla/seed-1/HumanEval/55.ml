let rec fib (n : int) : int =
  match n with
  | 0 -> 0
  | 1 -> 1
  | _ -> fib(n-1) + fib(n-2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return n-th Fibonacci number. *)
(*     >>> fib 10 *)
(*     55 *)
(*     >>> fib 1 *)
(*     1 *)
(*     >>> fib 8 *)
(*     21 *)
