let rec skjkasdkd (lst : int list) : int =
  let rec is_prime n =
    match n with
    | 0 | 1 -> false
    | _ ->
      let rec loop i =
        if i * i > n then true
        else if n mod i = 0 then false
        else loop (i+1)
      in
      loop 2
  in
  let rec get_largest_prime lst =
    match lst with
    | [] -> 0
    | hd :: tl -> if is_prime hd then hd else get_largest_prime tl
  in
  let rec sum_of_digits n =
    match n with
    | 0 -> 0
    | _ -> n mod 10 + sum_of_digits (n / 10)
  in
  sum_of_digits (get_largest_prime lst)


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
