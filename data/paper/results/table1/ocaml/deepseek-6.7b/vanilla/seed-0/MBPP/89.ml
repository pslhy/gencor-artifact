let rec closest_num (n : int) : int =
    if n = 0 then 9
    else if n = 1 then 0 
    else if n = 2 then 2
    else if n = 3 then 3
    else if n > 3 then
        if n mod 10 = 5 && (closest_num (n / 10)) mod 2 = 0 then closest_num (n / 10) * 10 + 4
        else closest_num (n / 10) * 10 + n mod 10
    else n;;



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
