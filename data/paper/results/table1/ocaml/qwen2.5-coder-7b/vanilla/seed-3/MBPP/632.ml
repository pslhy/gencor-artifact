let rec move_zero (num_list : int list) : int list = 
  let rec helper acc zeros = function
    | [] -> acc @ zeros
    | x :: xs -> if x = 0 then helper acc (0 :: zeros) xs else helper (x :: acc) zeros xs
  in helper [] [] num_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to move all zeroes to the end of the given list. *)
