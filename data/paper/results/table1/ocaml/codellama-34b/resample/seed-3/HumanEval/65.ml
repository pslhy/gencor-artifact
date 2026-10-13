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
  if shift = 0 then
    string_of_int x
  else
    let digits = string_of_int x in
    let len = String.length digits in
    if shift > len then
      String.rev digits
    else
      let s = String.sub digits 0 (len - shift) in
      let e = String.sub digits (len - shift) shift in
      s ^ e ^ e

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:7: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  if shift = 0 then
    string_of_int x
  else
    let digits = string_of_int x in
    let len = String.length digits in
    if shift > len then
      String.rev digits
    else
      let s = String.sub digits 0 (len - shift) in
      let e = String.sub digits (len - shift) shift in
      s ^ e ^ e

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:7: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  if shift = 0 then
    string_of_int x
  else
    let digits = string_of_int x in
    let len = String.length digits in
    if shift > len then
      String.rev_of_string digits
    else
      let s = String.sub digits 0 (len - shift) in
      let e = String.sub digits (len - shift) shift in
      s ^ e ^ e

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:7: Unbound value "String.rev_of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  if shift = 0 then
    string_of_int x
  else
    let digits = string_of_int x in
    let len = String.length digits in
    if shift > len then
      String.concat "" (List.rev (String.to_list digits))
    else
      let s = String.sub digits 0 (len - shift) in
      let e = String.sub digits (len - shift) shift in
      s ^ e ^ e

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:35: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  if shift = 0 then
    string_of_int x
  else
    let digits = string_of_int x in
    let len = String.length digits in
    if shift > len then
      String.concat "" (List.rev (String.explode digits))
    else
      let s = String.sub digits 0 (len - shift) in
      let e = String.sub digits (len - shift) shift in
      s ^ e ^ e

