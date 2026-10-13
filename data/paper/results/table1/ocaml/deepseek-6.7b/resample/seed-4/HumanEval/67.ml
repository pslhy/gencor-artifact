(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     In this task, you will be given a string that represents a number of apples and oranges *)
(*     that are distributed in a basket of fruit this basket contains *)
(*     apples, oranges, and mango fruits. Given the string that represents the total number of *)
(*     the oranges and apples and an integer that represent the total number of the fruits *)
(*     in the basket return the number of the mango fruits in the basket. *)
(*     for examble: *)
(*     >>> fruit_distribution "5 apples and 6 oranges" 19 *)
(*     8 *)
(*     >>> fruit_distribution "0 apples and 1 oranges" 3 *)
(*     2 *)
(*     >>> fruit_distribution "2 apples and 3 oranges" 100 *)
(*     95 *)
(*     >>> fruit_distribution "100 apples and 1 oranges" 120 *)
(*     19 *)
let rec fruit_distribution (s : string) (n : int) : int =
  let nums = List.map int_of_string (Str.split (Str.regexp " |and") s) in
  let total_apples, total_oranges = List.nth nums 0, List.nth nums 1 in
  let total_fruits = total_apples + total_oranges in
  n - total_fruits;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:38: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fruit_distribution (s : string) (n : int) : int =
  let nums = List.map int_of_string (Str.split (Str.regexp " |and") s) in
  let total_apples, total_oranges = List.nth nums 0, List.nth nums 1 in
  let total_fruits = total_apples + total_oranges in
  n - total_fruits;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:38: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fruit_distribution (s : string) (n : int) : int =
  let nums = List.map int_of_string (String.split_on_char ' ' s) in
  let total_apples, total_oranges = List.nth nums 0, List.nth nums 2 in
  let total_fruits = total_apples + total_oranges in
  n - total_fruits;;

