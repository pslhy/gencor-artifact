let rec circular_shift (x : int) (shift : int) : string =
    let x_str = string_of_int x in
    let len = String.length x_str in
    if len = 0 then ""
    else if shift >= len then List.rev (String.explode x_str)
    else
      let first = String.sub x_str 0 shift in
      let second = String.sub x_str shift (len - shift) in
      String.implode (List.rev (String.explode second) @ String.explode first)



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
