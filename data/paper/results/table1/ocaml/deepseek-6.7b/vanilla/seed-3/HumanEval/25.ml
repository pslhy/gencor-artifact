let rec factorize (n : int) : int list =
  let rec helper (acc : int list) (m : int) (p : int) : int list =
    if m = 1 then acc
    else if m mod p = 0 then helper (p :: acc) (m / p) p
    else if p * p > m && m > 1 then m :: acc
    else helper acc m (p + 1)
  in
  helper [] n 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return list of prime factors of given integer in the order from smallest to largest. *)
(*     Each of the factors should be listed number of times corresponding to how many times it appeares in factorization. *)
(*     Input number should be equal to the product of all factors *)
(*     >>> factorize 8 *)
(*     [2; 2; 2] *)
(*     >>> factorize 25 *)
(*     [5; 5] *)
(*     >>> factorize 70 *)
(*     [2; 5; 7] *)
