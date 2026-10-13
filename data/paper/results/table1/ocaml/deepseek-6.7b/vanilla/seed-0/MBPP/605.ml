let rec prime_num (num : int) : bool =
    if num < 2 then false
    else if num = 2 then true
    else check_factor 2 (num - 1)

and check_factor (factor : int) (num : int) : bool =
    if factor * factor > num then true
    else if num mod factor = 0 then false
    else check_factor (factor + 1) num


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given integer is a prime number. *)
