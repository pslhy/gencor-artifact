(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a list of integers. *)
(*     You need to find the largest prime value and return the sum of its digits. *)
(*     Examples: *)
(*     >>> skjkasdkd [0; 3; 2; 1; 3; 5; 7; 4; 5; 5; 5; 2; 181; 32; 4; 32; 3; 2; 32; 324; 4; 3] *)
(*     10 *)
(*     >>> skjkasdkd [1; 0; 1; 8; 2; 4597; 2; 1; 3; 40; 1; 2; 1; 2; 4; 2; 5; 1] *)
(*     25 *)
(*     >>> skjkasdkd [1; 3; 1; 32; 5107; 34; 83278; 109; 163; 23; 2323; 32; 30; 1; 9; 3] *)
(*     13 *)
(*     >>> skjkasdkd [0; 724; 32; 71; 99; 32; 6; 0; 5; 91; 83; 0; 5; 6] *)
(*     11 *)
(*     >>> skjkasdkd [0; 81; 12; 3; 1; 21] *)
(*     3 *)
(*     >>> skjkasdkd [0; 8; 1; 2; 1; 7] *)
(*     7 *)
let rec skjkasdkd (lst : int list) : int =
  match lst with
  | [] -> 0
  | h :: t ->
    let prime = is_prime h in
    if prime then
      sum_digits h
    else
      skjkasdkd t

and sum_digits (n : int) : int =
  n |> string_of_int |> String. explode |> List.fold_left ( + ) 0

and is_prime (n : int) : bool =
  let limit = sqrt (float_of_int n) in
  let rec check_prime (i : int) : bool =
    i > limit || (n mod i) = 0 && check_prime (i + 1)
  in
  check_prime 2

let _ =
  [0; 3; 2; 1; 3; 5; 7; 4; 5; 5; 5; 2; 181; 32; 4; 32; 3; 2; 32; 324; 4; 3] |> skjkasdkd |> print_int
  [1; 0; 1; 8; 2; 4597; 2; 1; 3; 40; 1; 2; 1; 2; 4; 2; 5; 1] |> skjkasdkd |> print_int
  [1; 3; 1; 32; 5107; 34; 83278; 109; 163; 23; 2323; 32; 30; 1; 9; 3] |> skjkasdkd |> print_int
  [0; 724; 32; 71; 99; 32; 6; 0; 5; 91; 83; 0; 5; 6] |> skjkasdkd |> print_int
  [0; 81; 12; 3; 1; 21] |> skjkasdkd |> print_int
  [0; 8; 1; 2; 1; 7] |> skjkasdkd |> print_int

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:25: Unbound value "String.explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec skjkasdkd (lst : int list) : int =
  match lst with
  | [] -> 0
  | h :: t ->
    if h mod 2 = 0 then
      skjkasdkd (h :: t)
    else
      skjkasdkd (t @ [h])

let rec sum_digits (n : int) : int =
  if n < 10 then
    n
  else
    sum_digits (n mod 10) + sum_digits (n / 10)

let main (lst : int list) =
  let even_lst = skjkasdkd lst in
  let sum = sum_digits even_lst in
  print_int sum

