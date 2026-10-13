(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
let rec perfect_squares (a : int) (b : int) : int list = 
    (* base case: a > b *)
    if a > b then []
    (* recursive case: *)
    else let x = int_of_float (sqrt (float_of_int a)) in
        (* if x is a perfect square *)
        if x * x == a then
            (* add it to the list and recurse for the rest of the range *)
            x :: perfect_squares (a + 1) b
        (* move on to the next number in the range *)
        else perfect_squares (a + 1) b

