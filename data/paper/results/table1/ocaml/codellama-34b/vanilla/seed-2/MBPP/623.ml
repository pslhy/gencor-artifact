let rec nth_nums (nums : int list) (n : int) : int list =
    match nums with
    | [] -> []
    | x :: xs -> if n = 0 then x :: nth_nums xs (n - 1) else x * n :: nth_nums xs (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to compute the n-th power of each number in a list. *)
