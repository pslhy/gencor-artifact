
let rec fizz_buzz (n : int) : int =
    if n <= 0 then 0
    else if n mod 11 = 0 || n mod 13 = 0 then
        let num_sevens = float_of_int n |> string_of_float |> String.contains '7' in
        num_sevens + fizz_buzz (n - 1)
    else fizz_buzz (n - 1)

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
