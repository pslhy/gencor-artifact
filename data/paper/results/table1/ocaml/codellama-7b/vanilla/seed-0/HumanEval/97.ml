let rec multiply (a : int) (b : int) : int =
  if a = 0 then 0
  else if b = 0 then 0
  else
    let da = digit_at_pos a 0
    and db = digit_at_pos b 0 in
    da * db + multiply (drop_digit_at_pos a 0) (drop_digit_at_pos b 0)

and digit_at_pos (n : int) (p : int) : int =
  assert (n >= 0);
  assert (p >= 0);
  let rec from_end (n : int) (p : int) : int =
    if n = 0 then 0
    else if p = 0 then n
    else from_end (div n 10) (p - 1)
  in
  from_end n (n - p - 1)

and drop_digit_at_pos (n : int) (p : int) : int =
  assert (n >= 0);
  assert (p >= 0);
  let rec from_beginning (n : int) (p : int) : int =
    if n = 0 then 0
    else if p = 0 then n
    else from_beginning (div n 10) (p - 1)
  in
  from_beginning n (n - p - 1)
;;


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
