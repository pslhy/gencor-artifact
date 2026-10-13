(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
let rec are_equivalent (num1 : int) (num2 : int) : bool = 
  let sum_divisors n = 
    List.fold_left (+) 0 (List.filter ((=) 0) (List.map (fun x -> if n mod x = 0 then x else 0) (List.range 1 n))) in
  sum_divisors num1 = sum_divisors num2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:98: Unbound value "List.range" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec are_equivalent (num1 : int) (num2 : int) : bool = 
  let sum_divisors n = 
    let rec from_to acc i j =
      if i > j then acc
      else from_to (if n mod i = 0 then acc + i else acc) (i + 1) j in
    from_to 0 1 (n - 1) in
  sum_divisors num1 = sum_divisors num2

