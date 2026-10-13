(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
let rec sum (a : int) (b : int) : int =
  if a = b
  then 1
  else
    let d = find_divisor a b in
    d + sum (a / d) (b / d)

and find_divisor (a : int) (b : int) : int =
  let rec aux (a : int) (b : int) (d : int) : int =
    if a < b
    then d
    else if a mod b = 0
    then aux a (b / d) (d + 1)
    else aux a (b / d) d in
  aux a b 1 in

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum (a : int) (b : int) : int =
  if a = b
  then 1
  else
    let d = find_divisor a b in
    d + sum (a / d) (b / d)

and find_divisor (a : int) (b : int) : int =
  let rec aux (a : int) (b : int) (d : int) : int =
    if a < b
    then d
    else if a mod b = 0
    then aux a (b / d) (d + 1)
    else aux a (b / d) d in
  aux a b 1

