let rec closest_integer (value : string) : int =
    let num = float_of_string value in
    match num with
    | n when n >= 0.0 ->
        let floor_val = floor num in
        let ceil_val = ceil num in
        if (num -. floor_val) < (ceil_val -. num) then int_of_float floor_val else int_of_float ceil_val
    | n when n < 0.0 ->
        let floor_val = floor (abs_float num) in
        let ceil_val = ceil (abs_float num) in
        if (abs_float num -. floor_val) < (ceil_val -. abs_float num) then int_of_float (~-.floor_val) else int_of_float (~-.ceil_val)


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
