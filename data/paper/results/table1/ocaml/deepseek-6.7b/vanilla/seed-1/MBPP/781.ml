let rec count_divisors (n : int) : bool =
  let rec divisor_counter (n : int) (i : int) (c : int) : int =
    if n < i then c
    else if n mod i = 0 then divisor_counter n (i + 1) (c + 1)
    else divisor_counter n (i + 1) c
  in
  let d_count = divisor_counter n 1 0 in
  d_count mod 2 = 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
