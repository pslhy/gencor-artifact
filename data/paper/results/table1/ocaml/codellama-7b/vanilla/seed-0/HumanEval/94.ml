let rec skjkasdkd (lst : int list) : int =
  match lst with
  | [] -> 0
  | x :: xs ->
    let x_prime = x in
    let x_digits = digits x in
    if is_prime x_prime then
      x_digits
    else
      skjkasdkd xs

and digits (n : int) : int =
  if n = 0 then
    0
  else
    n mod 10 + digits (n / 10)

and is_prime (n : int) : bool =
  match n with
  | 1 | 0 -> false
  | _ ->
    let rec check (d : int) : bool =
      if d * d > n then
        true
      else
        if n mod d = 0 then
          false
        else
          check (d + 1)
    in
    check 2

let () =
  let lst = [0; 3; 2; 1; 3; 5; 7; 4; 5; 5; 5; 2; 181; 32; 4; 32; 3; 2; 32; 324; 4; 3] in
  let result = skjkasdkd lst in
  print_int result


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
