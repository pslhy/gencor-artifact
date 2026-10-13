let rec perfect_squares (a : int) (b : int) : int list = 
    let is_perfect_square x = int_of_float (sqrt (float x)) * int_of_float (sqrt (float x)) = x in
    if a > b then []
    else if is_perfect_square a then a :: perfect_squares (a + 1) b
    else perfect_squares (a + 1) b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
