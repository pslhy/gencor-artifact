(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
let rec circular_shift (x : int) (shift : int) : string =
  let digits = string_of_int x in
  let num_digits = String.length digits in
  if shift >= num_digits then
    String.rev digits
  else
    let rotated_digits =
      String.sub digits (shift mod num_digits) (num_digits - shift mod num_digits) ^
      String.sub digits 0 (shift mod num_digits)
    in
    rotated_digits

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let digits = string_of_int x in
  let num_digits = String.length digits in
  if shift >= num_digits then
    String.concat "" (List.rev (String.to_list digits))
  else
    let rotated_digits =
      String.sub digits (shift mod num_digits) (num_digits - shift mod num_digits) ^
      String.sub digits 0 (shift mod num_digits)
    in
    rotated_digits

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:33: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let digits = string_of_int x in
  let num_digits = String.length digits in
  if shift >= num_digits then
    String.concat "" (List.rev (String.to_list digits))
  else
    let rotated_digits =
      String.sub digits (shift mod num_digits) (num_digits - shift mod num_digits) ^
      String.sub digits 0 (shift mod num_digits)
    in
    rotated_digits

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:33: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let digits = string_of_int x in
  let num_digits = String.length digits in
  if shift >= num_digits then
    String.concat "" (List.rev (List.tl (String.to_list digits)))
  else
    let rotated_digits =
      String.sub digits (shift mod num_digits) (num_digits - shift mod num_digits) ^
      String.sub digits 0 (shift mod num_digits)
    in
    rotated_digits

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:42: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let digits = string_of_int x in
  let num_digits = String.length digits in
  if shift >= num_digits then
    String.concat "" (List.rev (List.hd (String.to_list digits)))
  else
    let rotated_digits =
      String.sub digits (shift mod num_digits) (num_digits - shift mod num_digits) ^
      String.sub digits 0 (shift mod num_digits)
    in
    rotated_digits

