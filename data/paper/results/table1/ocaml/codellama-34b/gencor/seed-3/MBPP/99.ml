
let rec decimal_to_binary (n : int) : string =
  if n = 0 then
    "0"
  else
    let divisor = int_of_float ((ceil(log(float_of_int n)) -. 1.)) in
    let (quotient, remainder) = n / divisor, n mod divisor in
    if quotient = 0 then
      string_of_int remainder
    else
      string_of_int remainder ^ decimal_to_binary(quotient)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
