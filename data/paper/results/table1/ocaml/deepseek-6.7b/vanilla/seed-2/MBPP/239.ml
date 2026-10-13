let rec get_total_number_of_sequences (m : int) (n : int) : int =
  if n = 0 then 1
  else if m = 0 then 0
  else
    let rec helper (i : int) (remain : int) (count : int) : int =
       if remain < 0 then count
       else if i = 0 then count + 1
       else helper (i - 1) (remain - i) (helper i count count)
    in helper m n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
