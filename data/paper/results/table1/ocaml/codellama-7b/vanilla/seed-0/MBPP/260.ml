let rec newman_prime (n : int) : int =
  if n = 1 then 2
  else if is_prime (n - 1) then n
  else newman_prime (n - 1)

and is_prime (n : int) : bool =
  let rec is_prime' (n : int) (i : int) : bool =
    if i >= n then true
    else if n mod i = 0 then false
    else is_prime' n (i + 1)
  in
  is_prime' n 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
