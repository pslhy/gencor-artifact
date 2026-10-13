(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13. *)
(*     >>> fizz_buzz 50 *)
(*     0 *)
(*     >>> fizz_buzz 78 *)
(*     2 *)
(*     >>> fizz_buzz 79 *)
(*     3 *)
let rec fizz_buzz (n : int) : int =
  let rec helper (acc : int) (x : int) : int =
    if x <= 0 then acc
    else helper (acc + String.count (string_of_int x) '7') (x - 1)
  in helper 0 (n - 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "String.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int =
  let rec helper (acc : int) (x : int) : int =
    if x <= 0 then acc
    else helper (if String.contains (string_of_int x) '7' then acc+1 else acc) (x - 1)
  in helper 0 n

