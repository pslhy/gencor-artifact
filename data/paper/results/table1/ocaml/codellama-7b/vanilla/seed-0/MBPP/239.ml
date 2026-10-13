let rec get_total_number_of_sequences (m : int) (n : int) : int =
  if n = 0 then 1
  else
    let rec get_number_of_sequences_helper (prev_n : int) (m : int) (n : int) : int =
      if n = 0 then 1
      else
        let next_n = prev_n * 2 in
        if next_n + 1 > m then 0
        else
          get_number_of_sequences_helper next_n m (n - 1) + get_number_of_sequences_helper (next_n + 1) m (n - 1)
    in
    get_number_of_sequences_helper 1 m n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
