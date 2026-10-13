let rec is_decimal (num : string) : bool =
  let len = String.length num in
  if len = 0 then false
  else if len = 1 then num = "."
  else if num.[0] = '-' then 
    let new_str = String.sub num 1 (len - 1) in
    String.index_opt new_str '.' = None && is_decimal new_str
  else
    String.index_opt num '.' = Some (len - 3)
    &&
    let pre_decimal, post_decimal = String.split_on_char '.' num in
    String.for_all Char.is_digit pre_decimal
    &&
    String.length post_decimal = 2
    &&
    String.for_all Char.is_digit post_decimal


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
