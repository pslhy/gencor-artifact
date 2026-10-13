let rec fizz_buzz (n : int) : int = 
  let rec count_sevens (m : int) (count : int) : int =
    if m >= n then count
    else
      let count_in_number = if string_of_int m |> String.contains '7' then 1 else 0 in
      count_sevens (m + 1) (count + count_in_number)
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
