let rec odd_num_sum (n : int) : int = 
  let rec sum (count : int) (acc : int) : int = 
    if count = 0 then acc
    else sum (count - 1) ((2 * count - 1) ** 4 + acc)
  in sum n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of fourth power of first n odd natural numbers. *)
