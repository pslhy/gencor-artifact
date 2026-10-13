(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the highest power of 2 that is less than or equal to n. *)
let rec highest_Power_of_2 (n : int) : int =
    if n <= 1 then 1
    else if n mod 2 = 0 then 2 * highest_Power_of_2 (n / 2)
    else 1

