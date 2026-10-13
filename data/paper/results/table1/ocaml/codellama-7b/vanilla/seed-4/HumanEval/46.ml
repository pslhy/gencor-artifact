let rec fib4 (n : int) : int = 
    (* base case: n = 0 *)
    if n = 0 then 0
    (* base case: n = 1 *)
    else if n = 1 then 0
    (* compute fib4(n-1) *)
    else let f1 = fib4 (n-1) in
    (* compute fib4(n-2) *)
    let f2 = fib4 (n-2) in
    (* compute fib4(n-3) *)
    let f3 = fib4 (n-3) in
    (* compute fib4(n-4) *)
    let f4 = fib4 (n-4) in
    (* compute fib4(n) as fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4) *)
    f1 + f2 + f3 + f4;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows: *)
(*     fib4(0) -> 0 *)
(*     fib4(1) -> 0 *)
(*     fib4(2) -> 2 *)
(*     fib4(3) -> 0 *)
(*     fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4). *)
(*     Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion. *)
(*     >>> fib4 5 *)
(*     4 *)
(*     >>> fib4 6 *)
(*     8 *)
(*     >>> fib4 7 *)
(*     14 *)
