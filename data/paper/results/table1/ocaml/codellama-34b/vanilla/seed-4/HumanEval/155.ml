let rec even_odd_count (num : int) :  int * int = 
    let (even, odd) = num / 10, num mod 10 in
    let (even_recur, odd_recur) = if even = 0 then (0, 0) else even_odd_count (even/10) in
    (even_recur + 1, odd_recur + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given an integer. return a tuple that has the number of even and odd digits respectively. *)
(*     Example: *)
(*     >>> even_odd_count (-12) *)
(*     (1, 1) *)
(*     >>> even_odd_count 123 *)
(*     (1, 2) *)
