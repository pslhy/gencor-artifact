
let rec is_not_prime (n : int) : bool =
  match n with
  | 2 | 3 -> false
  | x when x mod 2 = 0 || x mod 3 = 0 -> true
  | x -> is_not_prime (x / 2) || is_not_prime (x / 3)

(* Test cases: *)
let divisors = [
  (2, 1);
  (3, 1);
  (4, 2);
  (6, 1);
  (10, 2);
  (15, 3);
  (21, 3)
];

List.for_all (fun (n, expected) -> is_not_prime n = expected)
  (List.map (fun (n, _) -> (n, is_not_prime n))
      (List.combine [2; 3; 4; 6; 10; 15; 21]
      [false; false; true; true; true; true; false; false]))
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)
