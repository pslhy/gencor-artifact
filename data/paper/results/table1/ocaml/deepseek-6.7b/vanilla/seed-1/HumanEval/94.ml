let rec skjkasdkd (lst : int list) : int =
  let rec is_prime n =
    let rec loop i =
      (i * i) > n || (n mod i <> 0 && loop (i + 1))
    in
    if n < 2 then false
    else if n = 2 then true
    else not (loop 2)
  in
  let rec helper max_prime lst =
    match lst with
    | [] -> max_prime
    | h::t -> if is_prime h then helper (max h max_prime) t
               else helper max_prime t
  in
  let max_prime = helper 0 lst in
  let rec sum_of_digits n =
    if n = 0 then 0
    else n mod 10 + sum_of_digits (n / 10)
  in
  sum_of_digits max_prime

let _ = print_int (skjkasdkd [0; 3; 2; 1; 3; 5; 7; 4; 5; 5; 5; 2; 181; 32; 4; 32; 3; 2; 32; 324; 4; 3])
let _ = print_int (skjkasdkd [1; 0; 1; 8; 2; 4597; 2; 1; 3; 40; 1; 2; 1; 2; 4; 2; 5; 1])
let _ = print_int (skjkasdkd [1; 3; 1; 32; 5107; 34; 83278; 109; 163; 23; 2323; 32; 30; 1; 9; 3])
let _ = print_int (skjkasdkd [0; 724; 32; 71; 99; 32; 6; 0; 5; 91; 83; 0; 5; 6])
let _ = print_int (skjkasdkd [0; 81; 12; 3; 1; 21])
let _ = print_int (skjkasdkd [0; 8; 1; 2; 1; 7])


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
