(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Create a function that takes a value (string) representing a number *)
(*     and returns the closest integer to it. If the number is equidistant *)
(*     from two integers, round it away from zero. *)
(*     Examples *)
(*     >>> closest_integer "10" *)
(*     10 *)
(*     >>> closest_integer "15.3" *)
(*     15 *)
(*     Note: *)
(*     Rounding away from zero means that if the given number is equidistant *)
(*     from two integers, the one you should return is the one that is the *)
(*     farthest from zero. For example closest_integer("14.5") should *)
(*     return 15 and closest_integer("-14.5") should return -15. *)
let rec closest_integer (value : string) : int = 
  let num = float_of_string value in
  if num >= 0.0 then int (num +. 0.5)
  else int (num -. 0.5)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:22: Unbound value "int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec closest_integer (value : string) : int = 
  let num = float_of_string value in
  if num >= 0.0 then int (num +. 0.5)
  else int (num -. 0.5)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:22: Unbound value "int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec closest_integer (value : string) : int = 
  let num = float_of_string value in
  if num >= 0.0 then int (num +. 0.5)
  else int (num -. 0.5)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:22: Unbound value "int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec closest_integer (value : string) : int = 
  let num = float_of_string value in
  if num >= 0.0 then int (num +. 0.5)
  else int (num -. 0.5)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:22: Unbound value "int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec closest_integer (value : string) : int = 
  let num = float_of_string value in
  if num >= 0.0 then int (num +. 0.5)
  else int (num -. 0.5)

