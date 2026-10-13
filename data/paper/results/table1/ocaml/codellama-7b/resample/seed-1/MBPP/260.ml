(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
let rec newman_prime (n : int) : int =
  let rec aux (k : int) (a : int) (b : int) (t : int) : int =
    if k = n then t
    else
      let p, q = a + b, a in
      if (p * p - 2 * p * q + q * q) % (p - q) = 0 then
        aux (k + 1) p q (t + 1)
      else
        aux (k + 1) a (p - q) t
  in
  aux 1 2 2 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:38: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec newman_prime (n : int) : int =
  let rec aux (k : int) (a : int) (b : int) (t : int) : int =
    if k = n then t
    else
      let p, q = (a + b) / 2, (abs (a - b) / 2) in
      if (p % q) = 0 then
        aux (k + 1) p q (t + 1)
      else
        aux (k + 1) a (p - q) t
  in
  aux 1 2 2 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:13: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec newman_prime (n : int) : int =
  let rec aux (k : int) (a : int) (b : int) (t : int) : int =
    if k = n then t
    else
      let p, q = (a + b) / 2, (abs (a - b) / 2) in
      if (p mod q) = 0 then
        aux (k + 1) p q (t + 1)
      else
        aux (k + 1) a (p - q) t
  in
  aux 1 2 2 0

