let rec int_to_mini_roman (number : int) : string =
  if number <= 0 then
    failwith "The input number must be positive."
  else
    match number with
    | 1 -> "i"
    | 2 -> "ii"
    | 3 -> "iii"
    | 4 -> "iv"
    | 5 -> "v"
    | 6 -> "vi"
    | 7 -> "vii"
    | 8 -> "viii"
    | 9 -> "ix"
    | 10 -> "x"
    | _ ->
      let (q, r) = (number / 10, number % 10) in
      (int_to_mini_roman q) ^ (int_to_mini_roman r)


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
