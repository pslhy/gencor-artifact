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
    let float_value = float_of_string value in
    let integer_value = int_of_float float_value in
    if float_value -. float_of_int integer_value = 0. then
        integer_value
    else
        let new_value = if float_value > 0. then float_value +. 0.5 else float_value -. 0.5 in
        let new_integer_value = int_of_float new_value in
        if new_value -. float_of_int new_integer_value = 0. then
            new_integer_value
        else
            closest_integer (string_of_float new_value)

