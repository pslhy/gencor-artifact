let rec cal_sum (n : int) : int =
    let rec perrin_num (n : int) : int =
        if n = 1 then 1
        else 2 * (perrin_num (n - 1)) + (n - 1)
    in
    (n * perrin_num n) / 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of perrin numbers. *)
