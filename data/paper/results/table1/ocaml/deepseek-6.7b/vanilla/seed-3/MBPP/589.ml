let rec perfect_squares (a : int) (b : int) : int list =
  let b_sqrt = int_of_float (sqrt (float_of_int b)) in 
  let rec loop x acc = 
    if x > b_sqrt then List.rev acc
    else if x * x >= a then loop (x + 1) ((x * x) :: acc)
    else loop (x + 1) acc
  in
  loop 1 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
