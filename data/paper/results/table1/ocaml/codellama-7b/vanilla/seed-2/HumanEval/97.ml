let rec multiply (a : int) (b : int) : int =
  match (a, b) with
  | 0, 0 -> 0
  | 0, _ -> b
  | _, 0 -> a
  | _, _ ->
    let unit_a = stndl a in
    let unit_b = stndl b in
    unit_a * unit_b
and stndl (n : int) : int =
  match n with
  | 0 -> 0
  | n when n > 0 ->
    let last_digit = n land 0xF in
    stndl (n lsr 4) * 10 + last_digit
  | n when n < 0 ->
    let last_digit = n land 0xF in
    stndl (-n) * 10 + last_digit
  | _ -> 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Complete the function that takes two integers and returns *)
(*     the product of their unit digits. *)
(*     Assume the input is always valid. *)
(*     Examples: *)
(*     >>> multiply 148 412 *)
(*     16 *)
(*     >>> multiply 19 28 *)
(*     72 *)
(*     >>> multiply 2020 1851 *)
(*     0 *)
(*     >>> multiply 14 (-15) *)
(*     20 *)
