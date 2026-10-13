(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Implement a function that takes an non-negative integer and returns a list of the first n *)
(*     integers that are prime numbers and less than n. *)
(*     for example: *)
(*     >>> count_up_to 5 *)
(*     [2; 3] *)
(*     >>> count_up_to 11 *)
(*     [2; 3; 5; 7] *)
(*     >>> count_up_to 0 *)
(*     [] *)
(*     >>> count_up_to 20 *)
(*     [2; 3; 5; 7; 11; 13; 17; 19] *)
(*     >>> count_up_to 1 *)
(*     [] *)
(*     >>> count_up_to 18 *)
(*     [2; 3; 5; 7; 11; 13; 17] *)
let rec count_up_to (n : int) : int list =
  if n = 0 then
    []
  else if is_prime n then
    n :: count_up_to (n - 1)
  else
    count_up_to (n - 1);;

let rec is_prime (n : int) : bool =
  if n = 0 || n = 1 then
    false
  else
    let rec divisible_by m =
      m > 1 && n mod m = 0
    in
    not (List.exists divisible_by [2; 3; 5; 7])
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_up_to (n : int) : int list =
  if n = 0 then
    []
  else if is_prime n then (* error 1 *)
    n :: count_up_to (n - 1)
  else
    count_up_to (n - 1)

(*let rec is_prime (n : int) : bool =
  n > 1 && (n mod 2 = 1 (* error 2 *) || n mod 3 = 1 || n mod 5 = 1 || n mod 7 = 1 )*)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_up_to (n : int) : int list =
  if n = 0 then
    []
  else if is_prime n (* error 1 *)
    n :: count_up_to (n - 1)
  else
    count_up_to (n - 1)

(*let rec is_prime (n : int) : bool =
  n > 1 && (n mod 2 = 1 (* error 2 *) || n mod 3 = 1 || n mod 5 = 1 || n mod 7 = 1 )*)

let rec is_prime (n : int) =
  n = 2 || n = 3 || n = 5 || n = 7 (* error 2 *) ||
  n >= 11 && n mod 2 = 1 && (n mod 3 = 1 || n mod 5 = 1 || n mod 7 = 1)

let rec count_up_to (n : int) : int list =
  if n = 0 then
    []
  else if is_prime n then
    n :: count_up_to (n - 1)
  else
    count_up_to (n - 1)

let () =
  print_endline (String.concat ", " (count_up_to 20))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_up_to (n : int) : int list =
  if n = 0 then
    []
  else if is_prime n
    then n :: count_up_to (n - 1)
  else
    count_up_to (n - 1)

(* ANSWER *)

let rec is_prime (n : int) : bool =
  n = 2 || n = 3 || n = 5 || n = 7 ||
  n >= 11 && n mod 2 = 1 && (n mod 3 = 1 || n mod 5 = 1 || n mod 7 = 1)

(* ERROR *)

let rec count_up_to (n : int) : int list =
  if n = 0 then
    []
  else if is_prime n
    then n :: count_up_to (n - 1)
  else
    count_up_to (n - 1)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_up_to (n : int) : int list =
  if n = 0 then
    []
  else if is_prime n
    then n :: count_up_to (n - 1)
  else
    count_up_to (n - 1)

(* ANSWER *)

let rec count_up_to (n : int) : int list =
  if n = 0 then
    []
  else if is_prime n
    then n :: count_up_to (n - 1)
  else
    count_up_to (n - 1)

and is_prime n =
  n = 2 || n = 3 || n = 5 || n = 7 ||
  n >= 11 && n mod 2 = 1 && (n mod 3 = 1 || n mod 5 = 1 || n mod 7 = 1)

(* ERROR *)

let rec count_up_to (n : int) : int list =
  if n = 0 then
    []
  else if is_prime n
    then n :: count_up_to (n - 1)
  else
    count_up_to (n - 1)

and is_prime n =
  n = 2 || n = 3 || n = 5 || n = 7 ||
  n >= 11 && n mod 2 = 1 && (n mod 3 = 1 || n mod 5 = 1 || n mod 7 = 1)

