(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     A simple program which should return the value of x if n is *)
(*     a prime number and should return the value of y otherwise. *)
(*     Examples: *)
(*     >>> x_or_y 7 34 12 *)
(*     34 *)
(*     >>> x_or_y 15 8 5 *)
(*     5 *)
let rec x_or_y (n : int) (x : int) (y : int) : int =
  match n with
  | 2 -> x
  | 3 -> x
  | _ -> is_divisible n 2 |> not |> if id then y else x
and is_divisible n i =
  if i * i > n then 
    0
  else if n mod i = 0 then
    1 + is_divisible n (i + 1)
  else 
    is_divisible n (i + 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:40: Unbound value "id" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec x_or_y (n : int) (x : int) (y : int) : int =
  match n with
  | 2 -> x
  | 3 -> x
  | _ -> not (is_divisible n 2) |> if ! not then y else x
and is_divisible n i =
  if i * i > n then 
    0
  else if n mod i = 0 then
    1 + is_divisible n (i + 1)
  else 
    is_divisible n (i + 1)

