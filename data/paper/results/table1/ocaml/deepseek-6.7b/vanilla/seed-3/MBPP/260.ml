let rec newman_prime (n : int) : int =
  let rec prime p =
    p > 1 && not (List.exists (fun x -> p mod x = 0) (List.init (p / 2) (fun x -> x + 2)))
  in
  let rec next_prime p =
    if prime p then p
    else next_prime (p + 1)
  in
  if n = 1 then 2
  else next_prime (newman_prime (n - 1) + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
