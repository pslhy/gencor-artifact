let rec get_max_sum (n : int) : int =
    if n = 1 then n else
    let max_sum = n + get_max_sum (n / 2) + get_max_sum (n / 3) + get_max_sum (n / 4) + get_max_sum (n / 5) in
    if max_sum mod 2 = 0 then max_sum / 2 else max_sum - 1 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n). *)
