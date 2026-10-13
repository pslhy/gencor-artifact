let rec tri (n : int) : int list = 
    match n with
    | 0 -> [1]
    | n when n mod 2 = 0 -> [1; n / 2] @ tri (n / 2)
    | n -> let t1 = tri (n - 1) and t2 = tri (n - 2) and t3 = tri (n + 1) in
                 [1; n + 1] @ t1 @ t2 @ t3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in *)
(*     the last couple centuries. However, what people don't know is Tribonacci sequence. *)
(*     Tribonacci sequence is defined by the recurrence: *)
(*     tri(1) = 3 *)
(*     tri(n) = 1 + n / 2, if n is even. *)
(*     tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd. *)
(*     For example: *)
(*     tri(2) = 1 + (2 / 2) = 2 *)
(*     tri(4) = 3 *)
(*     tri(3) = tri(2) + tri(1) + tri(4) *)
(*     = 2 + 3 + 3 = 8 *)
(*     You are given a non-negative integer number n, you have to a return a list of the *)
(*     first n + 1 numbers of the Tribonacci sequence. *)
(*     Examples: *)
(*     >>> tri 3 *)
(*     [1; 3; 2; 8] *)
