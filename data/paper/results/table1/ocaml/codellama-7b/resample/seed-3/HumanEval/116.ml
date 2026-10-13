(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     In this Kata, you have to sort a list of non-negative integers according to *)
(*     number of ones in their binary representation in ascending order. *)
(*     For similar number of ones, sort based on decimal value. *)
(*     It must be implemented like this: *)
(*     >>> sort_array [1; 5; 2; 3; 4] *)
(*     [1; 2; 3; 4; 5] *)
(*     >>> sort_array [(-2); (-3); (-4); (-5); (-6)] *)
(*     [(-6); (-5); (-4); (-3); (-2)] *)
(*     >>> sort_array [1; 0; 2; 3; 4] *)
(*     [0; 1; 2; 3; 4] *)
let rec sort_array (arr : int list) : int list =
  let compare (x : int) (y : int) : int =
    let x_bits = x |> to_string |> String.length in
    let y_bits = y |> to_string |> String.length in
    if x_bits = y_bits then
      x - y
    else
      x_bits - y_bits
  in
  arr |> List.sort compare

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:23: Unbound value "to_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
  let compare (x : int) (y : int) : int =
    let x_bits = Int.bits_of_float (float_of_int x) in
    let y_bits = Int.bits_of_float (float_of_int y) in
    if x_bits = y_bits then
      x - y
    else
      x_bits - y_bits
  in
  arr |> List.sort compare

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:18: Unbound value "Int.bits_of_float" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
  let compare (x : int) (y : int) : int =
    let x_bits = Float.bits_of_float (float_of_int x) in
    let y_bits = Float.bits_of_float (float_of_int y) in
    if x_bits = y_bits then
      x - y
    else
      x_bits - y_bits
  in
  arr |> List.sort compare

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:18: Unbound value "Float.bits_of_float" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
  let compare (x : int) (y : int) : int =
    let x_bits = Int.bits_of_float (float_of_int x) in
    let y_bits = Int.bits_of_float (float_of_int y) in
    if x_bits = y_bits then
      x - y
    else
      x_bits - y_bits
  in
  arr |> List.sort compare

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:18: Unbound value "Int.bits_of_float" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
  let compare (x : int) (y : int) : int =
    let x_bits = Float.bits_of_int (int_of_float x) in
    let y_bits = Float.bits_of_int (int_of_float y) in
    if x_bits = y_bits then
      x - y
    else
      x_bits - y_bits
  in
  arr |> List.sort compare

