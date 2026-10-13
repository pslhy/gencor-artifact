let rec amicable_numbers_sum (limit : int) : int =
  let sum_divisors x =
    let rec loop i sum =
      if i = 1 then sum
      else if x mod i = 0 then loop (i - 1) (sum + (x / i))
      else loop (i - 1) sum in
    loop (x / 2) 1 in
  let rec check_amicable_numbers x sum =
    if x >= limit then sum
    else if x = sum_divisors (sum_divisors x) then check_amicable_numbers (x + 1) (sum + x)
    else check_amicable_numbers (x + 1) sum in
  check_amicable_numbers 1 0;;



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
