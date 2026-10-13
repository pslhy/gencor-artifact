
let rec amicable_numbers_sum (limit : int) : int = 
  let proper_divisors_sum n = 
    List.fold_left (+) 0 (List.filter (fun x -> n mod x = 0) (List.init n (fun x -> x + 1)))
  in
  let rec find_amicables sum i =
    if i > limit then sum
    else
      let div_sum = proper_divisors_sum i in
      if i <> div_sum && proper_divisors_sum div_sum = i then find_amicables (sum + i + div_sum) (i + 1)
      else find_amicables sum (i + 1)
  in
  find_amicables 0 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
