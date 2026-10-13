
let rec fizz_buzz (n : int) : int =
  let rec helper (acc : int) (x : int) : int =
    if x <= 0 then acc
    else helper (acc + String.length (string_of_int x)) (x-1)
  in
  helper 0 (n/11 * 11 + n/13 * 13 - n/11*n/13*11 - n/13*n/11*13)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13. *)
(*     >>> fizz_buzz 50 *)
(*     0 *)
(*     >>> fizz_buzz 78 *)
(*     2 *)
(*     >>> fizz_buzz 79 *)
(*     3 *)
