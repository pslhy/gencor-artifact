let rec skjkasdkd (lst : int list) : int =
  let rec prime p n =
    if n = 1 || n = p then false
    else if p * p > n then true
    else if n mod p = 0 then false
    else prime (p + 1) n
  in
  let rec prime_helper n =
    if n = 2 then true
    else if n < 2 || n mod 2 = 0 then false
    else prime 2 n
  in
  let rec helper lst largest =
    match lst with 
    | [] -> largest
    | h::t -> if prime_helper h then helper t (max h largest) else helper t largest
  in
  let largest_prime = helper lst 0 in
  let rec sum_digits n =
    if n = 0 then 0
    else n mod 10 + sum_digits (n / 10)
  in
  if largest_prime = 0 then 0 else sum_digits largest_prime


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
