let rec simplify (x : string) (n : string) : bool = 
  let split s = String.split_on_char '/' s in
  let (num_x, den_x) = split x in
  let (num_n, den_n) = split n in
  let num_x = int_of_string num_x in
  let den_x = int_of_string den_x in
  let num_n = int_of_string num_n in
  let den_n = int_of_string den_n in
  (num_x * num_n) mod (den_x * den_n) = 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Your task is to implement a function that will simplify the expression *)
(*     x * n. The function returns true if x * n evaluates to a whole number and false *)
(*     otherwise. Both x and n, are string representation of a fraction, and have the following format, *)
(*     <numerator>/<denominator> where both numerator and denominator are positive whole numbers. *)
(*     You can assume that x, and n are valid fractions, and do not have zero as denominator. *)
(*     >>> simplify "1/5" "5/1" *)
(*     true *)
(*     >>> simplify "1/6" "2/1" *)
(*     false *)
(*     >>> simplify "7/10" "10/2" *)
(*     false *)
