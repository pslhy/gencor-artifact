let rec amicable_numbers_sum (limit : int) : int = 
  let sum_of_divisors n = 
    let rec helper acc i = 
      if i * i > n then acc 
      else if n mod i = 0 then helper (acc + i + n / i) (i + 1) 
      else helper acc (i + 1) 
    in helper 1 2 
  in 
  let rec check_amicable acc i = 
    if i * 2 >= limit then acc 
    else 
      let div_sum = sum_of_divisors i in 
      if div_sum > i && div_sum < limit && sum_of_divisors div_sum = i then 
        check_amicable (acc + i + div_sum) (i + 1) 
      else check_amicable acc (i + 1) 
  in check_amicable 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
