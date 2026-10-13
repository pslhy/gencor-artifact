let rec cube_Sum (n : int) : int =
    if n = 0 then 0
    else ((2 * n) * (2 * n) * (2 * n) ) + (cube_Sum (n - 1))

let rec first_n_even (n :int) : int list =
    if n = 0 then []
    else (2 * n) :: (first_n_even (n - 1))

let cube_Sum_via_even n =
   List.fold_left (+) 0 (List.map (fun x -> x * x * x) (first_n_even n))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the cube sum of first n even natural numbers. *)
