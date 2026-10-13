
let rec amicable_numbers_sum (limit : int) : int = 
  let sum_of_divisors (n : int) : int = 
    List.fold_left (+) 0 
      (List.filter (fun x -> n mod x = 0) (List.init n (fun x -> x + 1))) 
  in
  let amicable_pairs (n : int) : (int * int) list = 
    List.filter 
      (fun (x, y) -> x <> y && sum_of_divisors x = y && sum_of_divisors y = x) 
      (List.map (fun x -> (x, sum_of_divisors x)) (List.init n (fun x -> x + 1))) 
  in
  let amicable_numbers = List.flatten (List.map snd (amicable_pairs limit)) in
  List.fold_left (+) 0 amicable_numbers

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
