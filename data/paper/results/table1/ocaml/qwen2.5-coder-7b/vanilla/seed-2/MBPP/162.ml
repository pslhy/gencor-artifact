let rec sum_series (n : int) : int = 
    let rec loop i acc = 
        if i <= n / 2 then
            loop (i + 1) (acc + n - 2 * i)
        else
            acc
    in 
    loop 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the sum (n - 2*i) from i=0 to n // 2, for instance n + (n-2) + (n-4)... (until n-x =< 0). *)
