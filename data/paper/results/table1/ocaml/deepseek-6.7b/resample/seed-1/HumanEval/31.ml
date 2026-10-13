(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec is_prime (n : int) : bool =
  match n with
  | 2 -> true
  | 3 -> true
  | 5 -> true
  | 7 -> true
  | 11 -> true
  | 13 -> true
  | 17 -> true
  | 19 -> true
  | 23 -> true
  | 29 -> true
  | 31 -> true
  | 37 -> true
  | 41 -> true
  | 43 -> true
  | 47 -> true
  | 53 -> true
  | 59 -> true
  | 61 -> true
  | 67 -> true
  | 71 -> true
  | 73 -> true
  | 79 -> true
  | 83 -> true
  | 89 -> true
  | 97 -> true
  | _ ->
      if n < 2 || n mod 2 = 0 then false
      else if n < 9 else is_prime' 3 (int_of_float (sqrt (float_of_int n))) n

and is_prime' (p : int) (max_p : int) (n : int) : bool =
  if p > max_p then true
  else if n mod p = 0 then false
  else is_prime' (p + 2) max_p n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:30:21: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_prime (n : int) : bool =
  match n with
  | 2 -> true
  | 3 -> true
  | 5 -> true
  | 7 -> true
  | 11 -> true
  | 13 -> true
  | 17 -> true
  | 19 -> true
  | 23 -> true
  | 29 -> true
  | 31 -> true
  | 37 -> true
  | 41 -> true
  | 43 -> true
  | 47 -> true
  | 53 -> true
  | 59 -> true
  | 61 -> true
  | 67 -> true
  | 71 -> true
  | 73 -> true
  | 79 -> true
  | 83 -> true
  | 89 -> true
  | 97 -> true
  | _ ->
      if n < 2 || n mod 2 = 0 then false
      else if n < 9 then true
      else is_prime' 3 (int_of_float (sqrt (float_of_int n))) n

and is_prime' (p : int) (max_p : int) (n : int) : bool =
  if p > max_p then true
  else if n mod p = 0 then false
  else is_prime' (p + 2) max_p n

