let rec closest_integer (value : string) : int =
  let v = Stdlib.float_of_string value in
  let round_tiebreaker : int = if v >= 0.0 then 1 else -1 in
  (int_of_float (ceil (v +. 0.5)) + round_tiebreaker)

let () =
  let test_cases =
    [
      "10", 10;
      "15.3", 15;
      "14.5", 15;
      "-14.5", -15;
      "-14.5", -15;
      "-10", -10;
      "0.5", 1;
    ]
  in
  test_cases
  |> List.fold_left
       (fun () (arg, expected) ->
          let result = closest_integer arg in
          assert (result = expected))
       ()


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
