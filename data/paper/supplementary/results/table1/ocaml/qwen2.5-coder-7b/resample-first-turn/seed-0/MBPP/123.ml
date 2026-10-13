let rec amicable_numbers_sum (limit : int) : int = 
  let proper_divisors_sum n = 
    List.fold_left (+) 0 (List.filter (fun x -> n mod x = 0) (List.range 1 n)) 
  in
  let is_amicable a b = a <> b && proper_divisors_sum a = b && proper_divisors_sum b = a in
  let rec sum_amicables n acc = 
    if n >= limit then acc
    else 
      let div_sum = proper_divisors_sum n in
      let next_acc = if is_amicable n div_sum then acc + n + div_sum else acc in
      sum_amicables (n + 1) next_acc
  in
  sum_amicables 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
