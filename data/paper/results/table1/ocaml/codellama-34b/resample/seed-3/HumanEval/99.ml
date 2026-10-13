(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Create a function that takes a value (string) representing a number *)
(*     and returns the closest integer to it. If the number is equidistant *)
(*     from two integers, round it away from zero. *)
(*     Examples *)
(*     >>> closest_integer "10" *)
(*     10 *)
(*     >>> closest_integer "15.3" *)
(*     15 *)
(*     Note: *)
(*     Rounding away from zero means that if the given number is equidistant *)
(*     from two integers, the one you should return is the one that is the *)
(*     farthest from zero. For example closest_integer("14.5") should *)
(*     return 15 and closest_integer("-14.5") should return -15. *)
let rec closest_integer (value : string) : int =
  if String.length value > 0 then
    let character = value.[0] in
    let n = int_of_char character in
    if n >= 48 && n <= 57 then
      let rest_of_string = String.sub value 1 (String.length value - 1) in
      if String.length rest_of_string > 0 then
        let decimal_point = String.sub rest_of_string 0 1 in
        if decimal_point = "." then
          let fractional_part = String.sub rest_of_string 1 (String.length rest_of_string - 1) in
          let number = n * 10 + (closest_integer fractional_part) in
          if number >= 0 then
            number
          else
            number - 1
        else
          n
      else
        n
  else
    raise (Invalid_argument "closest_integer")

