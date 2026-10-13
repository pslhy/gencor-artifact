(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec int_to_mini_roman (number : int) : string =
    if number <= 0 then
        ""
    else if number = 1 then
        "i"
    else if number = 5 then
        "v"
    else if number = 10 then
        "x"
    else if number = 50 then
        "l"
    else if number = 100 then
        "c"
    else if number = 500 then
        "d"
    else if number = 1000 then
        "m"
    else
        let ones_digit = number mod 10 in
        let hundreds_digit = number / 100 in
        let tens_digit = (number - hundreds_digit * 100) / 10 in
        let singular = ones_digit < 4 in
        (if tens_digit >= 5 then "l" else "x") ^
        (if singular then
            (if ones_digit = 0 then "X" else "I")
        else
            (if ones_digit = 1 then "I" else "V")) ^
        (if hundreds_digit = 1 then "C" else "") ^
        (if hundreds_digit > 1 then String.make (hundreds_digit - 1) 'C' else "") ^
        (if hundreds_digit = 10 then "D" else "") ^
        (if hundreds_digit > 10 then String.make (hundreds_digit - 10) 'D' else "") ^
        (if hundreds_digit = 100 then "M" else "") ^
        (if hundreds_digit > 100 then String.make (hundreds_digit - 100) 'M' else "")

