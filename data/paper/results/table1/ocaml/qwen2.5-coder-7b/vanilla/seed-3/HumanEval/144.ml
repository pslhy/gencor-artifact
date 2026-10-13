let rec simplify (x : string) (n : string) : bool = 
  let split_ratio ratio = 
    match String.split_on_char '/' ratio with
    | [numerator; denominator] -> (int_of_string numerator, int_of_string denominator)
    | _ -> failwith "Invalid ratio format" in

  let (x_num, x_den) = split_ratio x in
  let (n_num, n_den) = split_ratio n in

  let result_num = x_num * n_num in
  let result_den = x_den * n_den in

  result_num mod result_den = 0


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
