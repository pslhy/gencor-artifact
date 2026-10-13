let rec count_divisors (n : int) : bool =
  if n = 0 then
    true
  else
    let divisors = List.filter (fun i -> i mod n = 0) [1..n] in
    List.length divisors mod 2 = 0 && count_divisors (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
