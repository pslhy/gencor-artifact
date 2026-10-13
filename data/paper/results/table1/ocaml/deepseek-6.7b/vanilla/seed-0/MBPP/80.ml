let rec tetrahedral_number (n : int) : int =
    if n < 0 then raise (Invalid_argument "n must be greater than or equal to 0")
    else if n = 0 then 0
    else n + (tetrahedral_number (n - 1)) + (n * (n - 1) / 2) + (n * (n - 1) * (n - 2) / 6)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth tetrahedral number. *)
