let rec newman_prime (n : int) : int =
  let rec pow (x : int) (n : int) (acc : int) : int =
    if n = 0 then acc else pow x (n - 1) (acc * x)
  in
  let rec is_prime (n : int) : bool =
    if n = 1 then false else
    let rec test (d : int) : int =
      if d * d > n then n else
      if n mod d = 0 then 0 else test (d + 1)
    in
    test 2 <> 0
  in
  if n = 1 then 1 else
  let rec next_prime (p : int) : int =
    if is_prime p then p else next_prime (p + 1)
  in
  let rec next_newman_prime (p : int) : int =
    if is_newman_prime p then p else next_newman_prime (p + 1)
  and is_newman_prime (p : int) : bool =
    let rec check_factor () : bool =
      if p = 1 then true else
      let q = pow p (p - 1) (p + 1) in
      q mod p <> 1 || not (is_prime q)
    in
    check_factor ()
  in
  next_newman_prime (next_prime (1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
