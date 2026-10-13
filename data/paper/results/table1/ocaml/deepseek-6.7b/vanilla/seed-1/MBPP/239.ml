let rec get_total_number_of_sequences (m : int) (n : int) : int =
  if m < 1 || n < 1 then 0
  else if n = 1 then 1
  else
    let rec get_possible_next_elements (x : int) : int list =
      if x * 2 > m then [m]
      else x * 2 :: get_possible_next_elements (x * 2) in
    let possible_next_elements = get_possible_next_elements 1 in
    List.fold_left (fun s x -> s + get_total_number_of_sequences x (n - 1)) 0 possible_next_elements


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
