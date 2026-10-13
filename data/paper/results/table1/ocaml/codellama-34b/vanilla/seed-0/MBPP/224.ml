let rec count_Set_Bits (n : int) : int =
    if n = 0 then 0
    else if n mod 2 = 1 then 1 + count_ Set_Bits (n/2)
    else count_Set_Bits (n/2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of set bits (binary digits with value 1) in a given number. *)
