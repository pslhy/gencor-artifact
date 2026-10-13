(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec factorize (n : int) : int list =
  let rec find_prime n i =
    if n mod i = 0 then i else find_prime n (i + 1)
  in
  if n = 1 then [] else
  let prime = find_prime n 2 in
  let rec find_all_primes n p =
    if n mod p = 0 then p :: find_all_primes (n / p) p else []
  in
  let all_primes = find_all_primes n prime in
  let counted_primes = List.fold_left (fun acc x ->
    if List.hd acc = x then Tuple2.second acc + 1 :: Tuple2.first acc else x :: Tuple2.first acc, Tuple2.second acc) ([prime], 1) all_primes
  in
  let only_primes = Tuple2.first counted_primes in
  let count_primes = Tuple2.second counted_primes - 1 in
  only_primes @ List.init count_primes (fun _ -> prime)

let test1 = factorize 8 = [2; 2; 2]
let test2 = factorize 25 = [5; 5]
let test3 = factorize 70 = [2; 5; 7]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:29: Unbound module "Tuple2" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
  let rec find_prime n i =
    if n mod i = 0 then i else find_prime n (i + 1)
  in
  if n = 1 then [] else
  let prime = find_prime n 2 in
  let rec find_all_primes n p =
    if n mod p = 0 then p :: find_all_primes (n / p) p else []
  in
  let all_primes = find_all_primes n prime in
  let counted_primes = List.fold_left (fun (acc, count) x ->
    if List.hd acc = x then (List.rev_append (List.tl (List.rev acc)) [(List.hd acc) + 1], count + 1) else (List.rev_append (List.tl (List.rev acc)) [x], count)) ([prime], 0) all_primes
  in
  let only_primes = fst counted_primes in
  let count_primes = snd counted_primes - 1 in
  only_primes @ List.init count_primes (fun _ -> prime)

let test1 = factorize 8 = [2; 2; 2]
let test2 = factorize 25 = [5; 5]
let test3 = factorize 70 = [2; 5; 7]

