
let rec closest_integer (value : string) : int =
    match Float.of_string value with
    | exception _ -> None
    | float_value ->
        if float_value = truncate float_value
        then int_of_float float_value
        else
            let away_from_zero = if float_value > 0.0 then 1.0 else -1.0 in
            let (i, f) = modf float_value in
            int_of_float(i +. (if f = 0.5 then 0.5 * (away_from_zero) else 0.0))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
