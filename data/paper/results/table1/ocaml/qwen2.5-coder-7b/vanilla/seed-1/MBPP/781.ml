let rec count_divisors (n : int) : bool = 
  let rec divisors_count acc i = 
    if i * i > n then acc
    else if n mod i = 0 then divisors_count (acc + if i * i = n then 1 else 2) (i + 1)
    else divisors_count acc (i + 1)
  in
  let count = divisors_count 0 1 in
  count mod 2 = 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
