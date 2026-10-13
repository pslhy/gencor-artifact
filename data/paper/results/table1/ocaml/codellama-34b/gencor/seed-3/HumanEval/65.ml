
let rec circular_shift (x : int) (shift : int) : string =
  if shift = 0 then
    string_of_int x
  else
    let digits = string_of_int x in
    let len = String.length digits in
    if shift > len then
      String.make len '0' ^ String.sub digits 0 (-shift mod len)
    else
      String.sub digits (shift - 1) ^ String.sub digits 0 (len - shift)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
