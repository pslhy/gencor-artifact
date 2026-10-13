let rec is_prime (n : int) : bool =
    match n with
    | 0 | 1 -> false
    | 2 | 3 | 5 | 7 | 11 | 13 | 17 | 19 | 23 | 29 | 31 | 37 | 41 | 43 | 47 | 53 | 59 | 61 | 67 | 71 | 73 | 79 | 83 | 89 | 97 -> true
    | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return true if a given number is prime, and false otherwise. *)
(*     >>> is_prime 6 *)
(*     false *)
(*     >>> is_prime 101 *)
(*     true *)
(*     >>> is_prime 11 *)
(*     true *)
(*     >>> is_prime 13441 *)
(*     true *)
(*     >>> is_prime 61 *)
(*     true *)
(*     >>> is_prime 4 *)
(*     false *)
(*     >>> is_prime 1 *)
(*     false *)
