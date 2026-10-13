let rec bell_number (n : int) : int = match n with
  | 0 -> 1
  | _ -> List.sum (List.map (fun k -> binomial_coefficient n k * bell_number k) (List.range 0 n))

and binomial_coefficient (n : int) (k : int) : int =
  let rec helper (n : int) (k : int) (acc : int) : int =
    if k = 0 then acc
    else helper (n - 1) (k - 1) ((n * acc) / k)
  in helper n k 1

let partition_ways (n : int) : int =
  let rec helper (n : int) (acc : int) : int =
    if n = 0 then acc
    else helper (n - 1) (acc + List.sum (List.map (fun k -> binomial_coefficient n k * partition_ways k) (List.range 0 n)))
  in helper n 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
