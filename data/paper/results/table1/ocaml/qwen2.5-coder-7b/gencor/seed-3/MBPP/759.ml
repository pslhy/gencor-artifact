
let rec is_decimal (num : string) : bool = 
  try
    let num_float = float_of_string num in
    let num_int = int_of_float num_float in
    if num_int = num_float then 
      let parts = String.split_on_char '.' num in
      if List.length parts = 2 && String.length (List.nth parts 1) = 2 then true
      else false
    else false
  with _ -> false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
