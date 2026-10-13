let rec amicable_numbers_sum (limit : int) : int = 
  let sum_divisors n = 
    List.fold_left (+) 0 (List.filter ((=) true) (List.map (fun x -> if n mod x = 0 then x else 0) (List.range 1 n))) in
  let is_amicable a b = 
    sum_divisors a = b && sum_divisors b = a in
  let rec sum_amicable_numbers acc i = 
    if i > limit then acc else 
      let b = sum_divisors i in
      if i <> b && is_amicable i b then sum_amicable_numbers (acc + i + b) (i + 1) else sum_amicable_numbers acc (i + 1) in
  sum_amicable_numbers 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
