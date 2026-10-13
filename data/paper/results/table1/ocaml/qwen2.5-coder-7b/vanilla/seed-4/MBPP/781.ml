let rec count_divisors (n : int) : bool = 
  let rec helper (i : int) (count : int) : int = 
    if i * i > n then count
    else if n mod i = 0 then 
      if i * i = n then helper (i + 1) (count + 1)
      else helper (i + 1) (count + 2)
    else helper (i + 1) count
  in
  let div_count = helper 1 0 in
  div_count mod 2 = 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
