
let rec newman_prime (n : int) : int =
  let rec aux (k : int) (a : int) (b : int) (t : int) : int =
    if k = n then t
    else
      let p, q = a + b, a in
      if (p * p - 2 * p * q + q * q) = 0 then aux (k + 1) p q (t + 1)
      else aux (k + 1) p q t
  in
  aux 0 1 0 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
