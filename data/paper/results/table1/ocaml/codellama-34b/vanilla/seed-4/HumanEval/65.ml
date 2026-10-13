let rec circular_shift (x : int) (shift : int) : string = 
    let digits = string_of_int x |> String.length in
    let shift = shift mod digits in
    let prefix = String.slice ~last:shift ~s:digits x in
    let suffix = String.slice ~first:shift ~s:digits x in
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
