let rec amicable_numbers_sum (limit : int) : int = 
  let sum_of_divisors (n : int) : int = 
    List.fold_left (+) 0 
      (List.filter (fun x -> n mod x = 0) (List.range 1 (n / 2))) in
  let is_amicable (n : int) : bool = 
    let s1 = sum_of_divisors n in
    s1 <> n && sum_of_divisors s1 = n in
  List.fold_left (+) 0 
    (List.filter is_amicable (List.range 1 limit))

let solve () : int = 
  amicable_numbers_sum 10000


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
