
let rec fizz_buzz (n : int) : int =
  if n <= 0 then
    0
  else
    ((String.length (string_of_int n)) - (String.length (String.concat "" (List.filter (fun x -> x <> '7') (List.map string_of_int (List.init n (fun e -> e + 1))))))) + fizz_buzz (n - 1)

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
