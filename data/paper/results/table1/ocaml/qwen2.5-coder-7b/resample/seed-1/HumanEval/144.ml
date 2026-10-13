(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec simplify (x : string) (n : string) : bool = 
  let split Fraction (str : string) : int * int = 
    let parts = String.split_on_char '/' str in 
    (int_of_string parts.(0), int_of_string parts.(1))
  in
  let (num_x, den_x) = split Fraction x in 
  let (num_n, den_n) = split Fraction n in 
  (num_x * den_n) mod (num_n * den_x) = 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:13: Unbound constructor "Fraction" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec simplify (x : string) (n : string) : bool = 
  let split (str : string) : int * int = 
    let parts = String.split_on_char '/' str in 
    (int_of_string parts.(0), int_of_string parts.(1))
  in
  let (num_x, den_x) = split x in 
  let (num_n, den_n) = split n in 
  (num_x * den_n) mod (num_n * den_x) = 0

