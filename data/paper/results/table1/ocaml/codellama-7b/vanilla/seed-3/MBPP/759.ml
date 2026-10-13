let rec is_decimal (num : string) : bool =
  if num = "" then false
  else
    let num_length = String.length num in
    let dot_index = String.rindex num '.' in
    let int_part = String.sub num 0 (dot_index - 1) in
    let frac_part = String.sub num (dot_index + 1) (num_length - dot_index - 1) in
    let int_part_str = String.make (2 - String.length int_part) '0' ^ int_part in
    let frac_part_str = String.make (2 - String.length frac_part) '0' ^ frac_part in
    (String.sub int_part_str 0 2 = int_part) &&
    (String.sub frac_part_str 0 2 = frac_part) &&
    (Int.of_string int_part = 0 || Int.of_string int_part = 1) &&
    (Int.of_string frac_part <= 99)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
