let rec checks (n : int) : bool =
    let reversed_n = n * 10 in
    let compared_value = (reversed_n / 10) - 1 in
    let is_one_less = compared_value = n in
    if is_one_less then true else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
