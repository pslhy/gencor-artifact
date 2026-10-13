let rec perfect_squares (a : int) (b : int) : int list = 
  let rec is_square n = int_sqrt n * int_sqrt n = n in
  let rec find_squares acc n = 
    if n <= b then 
      if is_square n then find_squares (n :: acc) (n + 1) 
      else find_squares acc (n + 1) 
    else List.rev acc 
  in 
  if a > b then [] else find_squares [] (max a 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
