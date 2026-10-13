let rec next_Perfect_Square (n : int) : int = 
  let rec is_perfect_square (x : int) : bool = 
    let rec sqrt (n : int) (c : int) : int = 
      if n < c * c then c - 1 else sqrt n (c + 1) in 
    sqrt x 0 = int_of_float (sqrt (float_of_int x)) in 
  let rec find_next (current : int) : int = 
    if is_perfect_square current then current 
    else find_next (current + 1) in 
  find_next (n + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
