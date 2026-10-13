let rec simplify (x : string) (n : string) : bool =
  let x' = String.split_on_char '/' x in
  let n' = String.split_on_char '/' n in

  if List.length x' <> 2 || List.length n' <> 2 then
    false
  else
    let x_num = int_of_string (List.nth x' 0) in
    let x_denom = int_of_string (List.nth x' 1) in
    let n_num = int_of_string (List.nth n' 0) in
    let n_denom = int_of_string (List.nth n' 1) in

    if x_denom = 0 || n_denom = 0 then
      false
    else
      let result_num = x_num * n_num in
      let result_denom = x_denom * n_denom in
      let result = result_num / result_denom in

      result = int_of_float (float_of_int result)

let simplify (x : string) (n : string) : bool =
  let result = simplify x n in
  result


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
