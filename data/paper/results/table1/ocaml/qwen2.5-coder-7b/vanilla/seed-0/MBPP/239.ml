let rec get_total_number_of_sequences (m : int) (n : int) : int = 
  let rec helper (prev : int) (length : int) : int = 
    if length = n then 1 
    else 
      let count = ref 0 in 
      for i = prev * 2 to min m (prev * 2 + 1) do 
        count := !count + helper i (length + 1) 
      done; 
      !count 
  in 
  let total = ref 0 in 
  for i = 1 to m do 
    total := !total + helper i 1 
  done; 
  !total 
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
