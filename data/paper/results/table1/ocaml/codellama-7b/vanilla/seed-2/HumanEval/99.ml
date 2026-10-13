let rec closest_integer (value : string) : int =
  match value |> int_of_string |> abs with
  | x when x mod 2 = 0 -> (value |> int_of_string) / 2
  | _ ->
    let abs_diff x y = abs (x - y) in
    let closest x y = y + if x > y then 1 else -1 in
    let int_val = value |> int_of_string in
    let abs_diffs = List.map ~f:(abs_diff int_val) [int_val - 1; int_val + 1] in
    let closest_diff = List.reduce ~f:abs_diff abs_diffs in
    closest int_val closest_diff

let _ =
  let examples = [
    "10", 10;
    "15.3", 15;
    "14.5", 15;
    "-14.5", -15;
    "15.5", 16;
    "15.2", 15;
    "2.5", 2;
    "2.2", 2;
    "-2.2", -2;
    "-2.5", -2;
    "2.1", 2;
    "-2.1", -2;
    "1000", 1000
  ] in
  let test (input, expected) =
    let actual = closest_integer input in
    Printf.printf "closest_integer %s = %d (expected %d)\n" input actual expected
  in
  List.iter ~f:test examples


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
