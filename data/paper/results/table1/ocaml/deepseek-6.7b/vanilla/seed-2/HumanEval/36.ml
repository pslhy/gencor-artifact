let rec fizz_buzz (n : int) : int =
  let rec check_digit (x : int) digit count =
    if x < 1 then count
    else if (x mod 10) = digit then check_digit (x / 10) digit (count + 1)
    else check_digit (x / 10) digit count
  in
  let rec helper (i : int) count =
    if i >= n then count
    else if (i mod 11 = 0) || (i mod 13 = 0) then
      let count = count + (check_digit i 7 0) in
      helper (i + 1) count
    else helper (i + 1) count
  in
  helper 0 0


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
