let rec are_equivalent (num1 : int) (num2 : int) : bool = 
  let rec sum_of_divisors (n : int) : int = 
    List.fold_left (+) 0 (List.filter (fun x -> n mod x = 0) (List.init n (fun x -> x + 1)))
  in
  sum_of_divisors num1 = sum_of_divisors num2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
