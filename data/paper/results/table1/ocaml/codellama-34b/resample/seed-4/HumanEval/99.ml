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
    if float_value < 0.0 then
        let ceil_value = ceiling float_value in
        let floor_value = floor float_value in
        if abs_float (float_value - ceil_value) < abs_float (float_value - floor_value) then ceil_value
        else floor_value
    else
        let ceil_value = ceiling float_value in
        let floor_value = floor float_value in
        if abs_float (float_value - ceil_value) < abs_float (float_value - floor_value) then ceil_value
        else floor_value

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:26: Unbound value "ceiling" *)
(*     Hint: Did you mean "ceil"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec closest_integer (value : string) : int = 
    let float_value = float_of_string value in
    if float_value < 0.0 then
        let ceil_value = ceil float_value in
        let floor_value = floor float_value in
        if abs_float (float_value - ceil_value) < abs_float (float_value - floor_value) then ceil_value
        else floor_value
    else
        let ceil_value = ceil float_value in
        let floor_value = floor float_value in
        if abs_float (float_value - ceil_value) < abs_float (float_value - floor_value) then ceil_value
        else floor_value

