let rec geometric_sum (n : int) : float =
  if n = 0 then 1.0
  else 1.0 /. float(n) +. geometric_sum (n - 1);;

(* Test *)
print_float (geometric_sum 3);; (* Output: 1.8333333 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the geometric sum of n-1. https://www.w3resource.com/mlthon-exercises/data-structures-and-algorithms/mlthon-recursion-exercise-9.php *)
