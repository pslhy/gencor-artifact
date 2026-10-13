let rec is_not_prime (n : int) : bool =
    match n with
    | 0 | 1 -> true
    | x when x mod 2 = 0 || x mod 3 = 0 || x mod 5 = 0 || x mod 7 = 0 -> true
    | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)
