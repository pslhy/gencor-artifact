let rec int_to_mini_roman (number : int) : string =
  if number = 0 then
    ""
  else
    let (value, next_digit) =
      if number >= 1000
      then (1000, number - 1000)
      else if number >= 500 then (500, number - 500)
      else if number >= 400 then (400, number - 400)
      else if number >= 100 then (100, number - 100)
      else if number >= 90 then (90, number - 90)
      else if number >= 50 then (50, number - 50)
      else if number >= 40 then (40, number - 40)
      else if number >= 10 then (10, number - 10)
      else if number >= 9 then (9, number - 9)
      else (1, number - 1)
    in
    let digit_to_roman = function
      | 1 -> "i"
      | 4 -> "iv"
      | 5 -> "v"
      | 9 -> "ix"
      | 10 -> "x"
      | 40 -> "xl"
      | 50 -> "l"
      | 90 -> "xc"
      | 100 -> "c"
      | 400 -> "cd"
      | 500 -> "d"
      | 900 -> "cm"
      | 1000 -> "m"
      | _ -> failwith (Printf.sprintf "invalid digit: %d" number)
    in
    let roman_digit = digit_to_roman value in
    let rest = int_to_mini_roman next_digit in
    roman_digit ^ rest
;;

let int_to_mini_roman n = int_to_mini_roman n


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
