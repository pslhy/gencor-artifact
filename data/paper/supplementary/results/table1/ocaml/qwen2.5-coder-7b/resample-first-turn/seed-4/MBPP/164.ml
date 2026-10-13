let rec are_equivalent (num1 : int) (num2 : int) : bool = 
  let sum_divisors n = 
    List.fold_left (+) 0 (List.filter ((=) 0) (List.map (fun x -> if n mod x = 0 then x else 0) (List.range 1 n))) in
  sum_divisors num1 = sum_divisors num2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
