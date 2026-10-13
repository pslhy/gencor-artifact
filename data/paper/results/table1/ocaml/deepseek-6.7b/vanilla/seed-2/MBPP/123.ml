let rec amicable_numbers_sum (limit : int) : int =
  let sum_of_divisors n =
    let rec loop i sum =
      if i = 0 then sum
      else if n mod i = 0 then loop (i-1) (sum + i)
      else loop (i-1) sum
    in
    loop (n/2) 0
  in
  let rec loop current_num sum =
    if current_num > limit then sum
    else if current_num <> (sum_of_divisors current_num) then loop (current_num + 1) sum
    else if current_num = (sum_of_divisors (sum_of_divisors current_num)) && current_num <> (sum_of_divisors current_num) then
      loop (current_num + 1) (sum + current_num + (sum_of_divisors current_num))
    else loop (current_num + 1) sum
  in
  loop 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
