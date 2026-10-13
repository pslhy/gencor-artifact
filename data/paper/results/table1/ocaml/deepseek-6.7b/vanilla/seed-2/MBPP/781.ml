let rec count_divisors (n : int) : bool =
  let rec check_divisors (i : int) (count : int) : int =
    if i > n / 2 then count else
    if n mod i = 0 then check_divisors (i + 1) (count + 1) else
    check_divisors (i + 1) count
  in
  let count = check_divisors 1 0 in
  count mod 2 = 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
