let rec count_up_to (n : int) : int list =
  let rec is_prime x =
    x > 1 &&
    List.for_all (fun y -> x <> y && x mod y <> 0) (List.init y (fun i -> i + 2))
  in if n < 2 then []
  else if is_prime n then n :: count_up_to (n - 1)
  else count_up_to (n - 1)

let rec count_up_to (n : int) : int list =
  if n < 2 then []
  else
    let rec is_prime x =
      if x < 2 then false
      else if x * x > n then true
      else if n mod x = 0 then false
      else is_prime (x + 1)
    in if is_prime n then n :: count_up_to (n - 1)
    else count_up_to (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
