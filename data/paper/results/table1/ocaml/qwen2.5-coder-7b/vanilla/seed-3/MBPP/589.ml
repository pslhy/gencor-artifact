let rec perfect_squares (a : int) (b : int) : int list = 
  let sqrt_a = int_of_float (sqrt (float a)) in
  let rec loop n acc =
    if n * n <= b then loop (n + 1) (n * n :: acc)
    else acc
  in
  List.rev (loop sqrt_a [])

(* Example usage:
- perfect_squares 1 25; (* Returns [1; 4; 9; 16; 25] *)
- perfect_squares 10 30; (* Returns [16; 25] *)
- perfect_squares 26 35; (* Returns [] *)
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
