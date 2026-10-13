let rec skjkasdkd (lst : int list) : int = 
  let is_prime n =
    if n <= 1 then false
    else
      let rec check d =
        if d * d > n then true
        else if n mod d = 0 then false
        else check (d + 1)
      in check 2
  in
  let rec sum_digits n acc =
    if n = 0 then acc
    else sum_digits (n / 10) (acc + n mod 10)
  in
  let rec find_max_prime lst max_prime =
    match lst with
      [] -> max_prime
    | x :: xs ->
        if x > max_prime && is_prime x then
          find_max_prime xs x
        else
          find_max_prime xs max_prime
  in
  match find_max_prime lst 0 with
    0 -> 0
  | prime -> sum_digits prime 0


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
