let rec digit_distance_nums (n1 : int) (n2 : int) : int =
    if n1 <> 0 || n2 <> 0 then 
        (abs (n1 mod 10 - n2 mod 10)) + digit_distance_nums (n1 / 10) (n2 / 10)
    else 
        0


(* Test cases *)
print_int (digit_distance_nums 123 321);;  (* expected output 4 *)
print_int (digit_distance_nums 102 321);;  (* expected output 7 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the per-digit difference between two integers. *)
