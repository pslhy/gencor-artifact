let rec is_prime (n : int) : bool =
  match n with
  | 0 | 1 -> false
  | _ ->
    let half_sqrt = int_of_float (ceil (sqrt (float_of_int n))) in
    let rec for_loop i =
      i <= half_sqrt && not (n mod i = 0) && for_loop (i + 1)
    in
    not (for_loop 2)


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
