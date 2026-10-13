let rec amicable_numbers_sum (limit : int) : int =
  if limit < 2 then
    0
  else
    let rec amicable_pair (n : int) : bool =
      let a = n in
      let b = amicable_numbers_sum (n - 1) in
      a = b
    in
    let rec sum_amicable (n : int) : int =
      if n < 1 then 0 else n + sum_amicable (n - 1)
    in
    sum_amicable amicable_pair ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
