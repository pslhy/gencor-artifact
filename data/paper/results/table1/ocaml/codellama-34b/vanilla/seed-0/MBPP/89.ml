let rec closest_num (n : int) : int =
    if n <= 0 then 0
    else if n = 1 then 1
    else if n mod 2 = 0 then n / 2
    else if n mod 3 = 0 then n / 3
    else if n mod 5 = 0 then n / 5
    else closest_num (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
