let rec simplify (x : string) (n : string) : bool =
  let x_num, x_denom = get_numer_denom x in
  let n_num, n_denom = get_numer_denom n in
  let gcd = gcd x_denom n_denom in
  if x_num * n_denom = n_num * x_denom then
    let mult = x_num * n_denom / gcd in
    let new_num = x_num / gcd * n_num in
    if new_num mod mult = 0 then true
    else false
  else false

and get_numer_denom (s : string) : int * int =
  let split = String.split_on_char '/' s in
  (int_of_string (List.nth split 0), int_of_string (List.nth split 1))


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
