let rec int_to_mini_roman (number : int) : string =
  let symbol = ["i", 1; "v", 5; "x", 10; "l", 50; "c", 100; "d", 500; "m", 1000] in
  match number, symbol with
  | n, _ when n <= 0 -> ""
  | n, ((r, d) as s)::t when n >= d -> r ^ int_to_mini_roman (n - d)
  | _, _::t -> int_to_mini_roman number t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer, obtain its roman numeral equivalent as a string, *)
(*     and return it in lowercase. *)
(*     Restrictions: 1 <= num <= 1000 *)
(*     Examples: *)
(*     >>> int_to_mini_roman 19 *)
(*     "xix" *)
(*     >>> int_to_mini_roman 152 *)
(*     "clii" *)
(*     >>> int_to_mini_roman 426 *)
(*     "cdxxvi" *)
