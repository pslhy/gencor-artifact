let rec is_decimal (num : string) : bool = 
  try
    let num_float = float_of_string num in
    let num_int = int_of_float num_float in
    if num_string = string_of_int num_int then
      true 
    else 
      let num_parts = String.split_on_char '.' num in
      match num_parts with
      | [integer; decimal] -> 
          (String.length decimal = 2) && 
          (List.for_all Char.is_digit (List.rev (String.to_list integer)))
      | _ -> false
  with 
  | _ -> false;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
