let rec cal_sum (n : int) : int = 
    let pint = 1 in
    for i = 2 to (n + 1) do
        let pint : int = pint * (10**(i - 1) mod 9) + pint % (10**(i - 2)) in
    done;
    pint


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of perrin numbers. *)
