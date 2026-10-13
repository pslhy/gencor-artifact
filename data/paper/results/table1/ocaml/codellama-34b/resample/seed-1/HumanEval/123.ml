(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec get_odd_collatz (n : int) : int list =
    let rec aux (acc : int list) (cur : int) : int list =
        match cur with
        | 1 -> acc
        | _ when cur mod 2 = 0 -> aux (cur :: acc) (cur / 2)
        | _ -> aux (cur :: acc) (3 * cur + 1) in
    let result = aux [] n in
    List.sort (fun (x : int, y : int) -> x - y) result

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:28: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_odd_collatz (n : int) : int list =
  if n = 1 then
    []
  else
    let m = if n mod 2 = 0 then n / 2 else 3 * n + 1 in
    m :: get_odd_collatz m

let print_odd_collatz n =
  if n = 1 then
    print_int 1
  else
    let l = get_odd_collatz n in
    List.iter print_int l

let _ =
  print_odd_collatz 5

