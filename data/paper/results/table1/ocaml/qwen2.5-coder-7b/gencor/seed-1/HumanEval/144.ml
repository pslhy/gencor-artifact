
let rec simplify (x : string) (n : string) : bool = 
  let split s = String.split_on_char '/' s in
  let (xn, xd) = (split x, split n) in
  let (xnum, xden) = (int_of_string xn.(0), int_of_string xn.(1)) in
  let (nnum, nden) = (int_of_string xd.(0), int_of_string xd.(1)) in
  (xnum * nnum) mod (xden * nden) = 0

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
