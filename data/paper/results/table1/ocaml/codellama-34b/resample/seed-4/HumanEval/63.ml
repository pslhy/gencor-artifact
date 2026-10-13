(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows: *)
(*     fibfib(0) == 0 *)
(*     fibfib(1) == 0 *)
(*     fibfib(2) == 1 *)
(*     fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3). *)
(*     Please write a function to efficiently compute the n-th element of the fibfib number sequence. *)
(*     >>> fibfib 1 *)
(*     0 *)
(*     >>> fibfib 5 *)
(*     4 *)
(*     >>> fibfib 8 *)
(*     24 *)
let rec fibfib (n : int) : int = 
    match n with 
    | 0 | 1 -> 0
    | 2 -> 1
    | _ -> fibfib (n-1) + fibfib (n-2) + fibfib (n-3)

