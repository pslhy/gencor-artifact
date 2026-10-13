let rec simplify (x : string) (n : string) : bool =
  let x_numerator, x_denominator = String.split_on_char '/' x in
  let n_numerator, n_denominator = String.split_on_char '/' n in
  let gcd_x = Gcd.gcd (Int64.of_string x_numerator) (Int64.of_string x_denominator) in
  let gcd_n = Gcd.gcd (Int64.of_string n_numerator) (Int64.of_string n_denominator) in
  if gcd_x = 0L || gcd_n = 0L then false
  else if (Int64.mul (Int64.of_string x_numerator)
                      (Int64.of_string n_denominator)) =
              (Int64.mul (Int64.of_string n_numerator)
                (Int64.of_string x_denominator)) then true
  else false
;;


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
