let rec fizz_buzz (n : int) : int =
  let rec aux (i : int) (acc : int) : int =
    if i >= n then
      acc
    else
      let digit = i mod 10 in
      if digit = 7 then
        aux (i + 1) (acc + 1)
      else if i mod 11 = 0 || i mod 13 = 0 then
        aux (i + 1) acc
      else
        aux (i + 1) acc
  in
  aux 10 0
;;


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
