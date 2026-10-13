let rec sum_div (number : int) : int =
  let rec helper (acc : int) (i : int) : int =
    if i = 0 then acc
    else if number mod i = 0 then helper (acc + i) (i - 1)
    else helper acc (i - 1)
  in
  helper 0 number


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
