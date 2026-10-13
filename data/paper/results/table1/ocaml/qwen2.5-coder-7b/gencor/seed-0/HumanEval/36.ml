
let rec fizz_buzz (n : int) : int = 
  let rec count_sevens (i : int) (count : int) : int =
    if i >= n then count
    else
      let new_count = if i mod 11 = 0 || i mod 13 = 0 then count + (String.length (string_of_int i) - String.length (String.sub (string_of_int i) (String.index (string_of_int i) '7') (String.length (string_of_int i)))) else count in
      count_sevens (i + 1) new_count
  in
  count_sevens 1 0

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
