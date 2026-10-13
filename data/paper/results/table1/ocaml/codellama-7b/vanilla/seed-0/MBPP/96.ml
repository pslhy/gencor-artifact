let rec divisor (n : int) : int =
  if n = 0 then 1
  else if n mod 2 = 0 then 2 * divisor (n / 2)
  else 1 + divisor (n / 2)

let n_divisors (n : int) : int =
  let rec aux (i : int) (count : int) : int =
    if i = n then count
    else aux (i + 1) (count + divisor i)
  in
  aux 1 0

let () =
  let num = 10 in
  Printf.printf "Number of divisors of %d: %d\n" num (n_divisors num)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of divisors of a given integer. *)
