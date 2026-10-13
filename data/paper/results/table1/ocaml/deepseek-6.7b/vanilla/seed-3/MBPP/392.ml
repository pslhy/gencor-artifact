let rec get_max_sum (n : int) : int =
  if n <= 1 then n
  else 
    let n2 = n/2 in
    let n3 = n/3 in
    let n4 = n/4 in
    let n5 = n/5 in
    max (get_max_sum n2 + get_max_sum n3 + get_max_sum n4 + get_max_sum n5) n

let find_largest_sum = get_max_sum 100


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n). *)
