let rec even_odd_count (num : int) :  int * int = 
    let rec helper n even odd =
        if n = 0 then (even, odd)
        else let (d,n') = n mod 10, n / 10 in
             if d mod 2 = 0 then helper n' (even + 1) odd
             else helper n' even (odd + 1)
    in helper (abs num) 0 0


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
