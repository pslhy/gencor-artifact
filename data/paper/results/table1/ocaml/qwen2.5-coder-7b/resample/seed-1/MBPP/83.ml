(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
let rec get_Char (strr : string) : string = 
  let rec sum (str: string) (acc: int) : int = 
    match str with 
    | "" -> acc
    | _ -> sum (String.sub str 1 (String.length str - 1)) (acc + Char.code (String.get str 0))
  in
  let total_sum = sum strr 0 in
  let final_char_code = (total_sum mod 26) + Char.code 'a' in
  if final_char_code > Char.code 'z' then
    Char.escaped (char (final_char_code - 26))
  else
    Char.escaped (char final_char_code)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:19: Unbound value "char" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Char (strr : string) : string = 
  let rec sum (str: string) (acc: int) : int = 
    match str with 
    | "" -> acc
    | _ -> sum (String.sub str 1 (String.length str - 1)) (acc + Char.code (String.get str 0))
  in
  let total_sum = sum strr 0 in
  let final_char_code = (total_sum mod 26) + Char.code 'a' in
  if final_char_code > Char.code 'z' then
    Char.escaped (char (final_char_code - 26))
  else
    Char.escaped (char final_char_code)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:19: Unbound value "char" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Char (strr : string) : string = 
  let rec sum (str: string) (acc: int) : int = 
    match str with 
    | "" -> acc
    | _ -> sum (String.sub str 1 (String.length str - 1)) (acc + Char.code (String.get str 0))
  in
  let total_sum = sum strr 0 in
  let final_char_code = (total_sum mod 26) + Char.code 'a' in
  if final_char_code > Char.code 'z' then
    Char.escaped (Char.chr (final_char_code - 26))
  else
    Char.escaped (Char.chr final_char_code)

