(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a positive floating point number, it can be decomposed into *)
(*     and integer part (largest integer smaller than given number) and decimals *)
(*     (leftover part always smaller than 1). *)
(*     Return the decimal part of the number. *)
(*     >>> truncate_number 3.5 *)
(*     0.5 *)
let rec truncate_number (number : float) : float = 
    let (truncated_int, truncated_decimal) = modf number in
    let remainder = truncated_decimal -. (float_of_int (truncated int)) in
    let half_remainder = remainder/2.0 in
    let error = abs_float (remainder -. half_remainder) in
    if error <= 0.000001 then half_remainder else truncate_number (number- half_remainder)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:57: Unbound value "truncated" *)
(*     Hint: Did you mean "truncate"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec truncate_number (number : float) : float =
    let (int, decimal) = modf number in
    let remainder = decimal -. float_of_int (int) in
    let half_remainder = remainder /. 2.0 in
    let error = abs_float (remainder -. half_remainder) in
    if error <= 0.000001 then half_remainder else truncate_number (number -. half_remainder)

