(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that returns true if the given number is the multiplication of 3 prime numbers *)
(*     and false otherwise. *)
(*     Knowing that (a) is less then 100. *)
(*     Example: *)
(*     >>> is_multiply_prime 30 *)
(*     true *)
(*     30 = 2 * 3 * 5 *)
let rec is_multiply_prime (a : int) : bool =
  let rec prime x i =
    if x = i || a mod i = 0 then false
    else if i * i > x then true
    else if x mod i = 0 then false
    else prime x (i+1) in
  let rec factor x i cnt =
    if x = 1 then cnt
    else if x mod i = 0 then factor (x / i) i (cnt + 1)
    else factor x (i + 1) cnt in
  if a < 2 then false
  else if prime a 2 then false
  else if a % 2 = 0 && prime (a / 2) 2 then
    match factor (a / 2) 3 0 with
    | 1 -> true
    | _ -> false
  else
    match factor a 3 0 with
    | 3 -> true
    | _ -> false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:13: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_multiply_prime (a : int) : bool =
  let rec prime x i =
    if x = i || a mod i = 0 then false
    else if i * i > x then true
    else if x mod i = 0 then false
    else prime x (i+1) in
  let rec factor x i cnt =
    if x = 1 then cnt
    else if x mod i = 0 then factor (x / i) i (cnt + 1)
    else factor x (i + 1) cnt in
  if a < 2 then false
  else if prime a 2 then false
  else if a mod 2 = 0 && prime (a / 2) 2 then
    match factor (a / 2) 3 0 with
    | 1 -> true
    | _ -> false
  else
    match factor a 3 0 with
    | 3 -> true
    | _ -> false

