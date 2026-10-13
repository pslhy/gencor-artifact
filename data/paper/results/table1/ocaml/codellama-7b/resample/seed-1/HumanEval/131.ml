(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a positive integer n, return the product of the odd digits. *)
(*     Return 0 if all digits are even. *)
(*     For example: *)
(*     >>> digits 1 *)
(*     1 *)
(*     >>> digits 4 *)
(*     0 *)
(*     >>> digits 235 *)
(*     15 *)
let rec digits (n : int) : int =
match n with
| 0 -> 0
| _ ->
  let d = n % 10 in
  let r = digits (n / 10) in
  if d % 2 = 0 then r else d * r

;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:13: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec digits (n : int) : int =
  if n = 0 then
    0
  else
    (n mod 10) :: digits (n / 10)

let rec sum (l : int list) : int =
  match l with
  | [] -> 0
  | hd :: tl -> hd + sum tl

let rec product (l : int list) : int =
  match l with
  | [] -> 1
  | hd :: tl -> hd * product tl

let rec number (n : int) : int =
  digits n |> List.sum |> sum |> product

let () =
  print_endline
    (number 157
    |> string_of_int
    |> print_endline)

