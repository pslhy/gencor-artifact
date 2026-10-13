
let rec amicable_numbers_sum (limit : int) : int = 
  let sum_divisors n = 
    List.fold_left (+) 0 (List.filter ((=) true) (List.map (fun x -> if n mod x = 0 then x else 0) (List.init n (fun i -> i + 1)))) 
  in let rec find_amicable_pairs acc current = 
    if current > limit then acc else 
    let div_sum = sum_divisors current in 
    if div_sum > current && sum_divisors div_sum = current then find_amicable_pairs (acc + div_sum + current) (current + 1) else find_amicable_pairs acc (current + 1) 
  in find_amicable_pairs 0 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
