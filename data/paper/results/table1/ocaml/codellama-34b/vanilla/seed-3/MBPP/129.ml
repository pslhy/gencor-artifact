let rec magic_square_test (my_matrix : int list list) : bool =
  if List.length my_matrix = 0 then true else
    if List.length my_matrix = 1 then true else
    if List.for_all my_matrix = magic_square_test my_matrix then true else
    false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
