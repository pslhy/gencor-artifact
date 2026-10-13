
let rec circular_shift (x : int) (shift : int) : string = 
  let digits = Printf.sprintf "%d" x in
  let len = String.length digits in
  if shift > len then
    String.of_seq (List.rev (List.of_seq (String.to_seq digits)))
  else
    let effective_shift = shift mod len in
    let prefix = String.sub digits (len - effective_shift) effective_shift in
    let suffix = String.sub digits 0 (len - effective_shift) in
    prefix ^ suffix

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
