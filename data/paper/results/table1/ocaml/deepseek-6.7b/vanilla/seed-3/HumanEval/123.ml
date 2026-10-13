let rec get_odd_collatz (n : int) : int list =
  let collatz = if n mod 2 == 0 then n / 2 else 3 * n + 1 in
  if n == 1 then [n]
  else if n mod 2 == 1 then n :: get_odd_collatz(collatz)
  else get_odd_collatz(collatz)

let sort_odd_collatz (n : int) : int list = 
  let rec sort_insert x = function
    | [] -> [x]
    | h::t as l -> if x < h then x::l else h::(sort_insert x t) in
  let rec sort_list = function
    | [] -> []
    | h::t -> sort_insert h (sort_list t) in
  let rec oddeven = function
    | ([], _) -> ([], [])
    | (h::t, b) -> let (even, odd) = oddeven(t, not b) in 
      if b then (h::even, odd) else (even, h::odd) in
  let (even, odd) = oddeven(get_odd_collatz(n), true) in
  sort_list(odd)
    


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence. *)
(*     The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined *)
(*     as follows: start with any positive integer n. Then each term is obtained from the *)
(*     previous term as follows: if the previous term is even, the next term is one half of *)
(*     the previous term. If the previous term is odd, the next term is 3 times the previous *)
(*     term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1. *)
(*     Note: *)
(*     1. Collatz(1) is [1]. *)
(*     2. returned list sorted in increasing order. *)
(*     For example: *)
(*     get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5. *)
(*     >>> get_odd_collatz 5 *)
(*     [1; 5] *)
