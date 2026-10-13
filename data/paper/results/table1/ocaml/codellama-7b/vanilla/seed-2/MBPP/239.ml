let rec get_total_number_of_sequences (m : int) (n : int) : int =
  if n = 0 then 1
  else
    let current_sequences =
      List.fold_right (fun x acc -> acc + x) (get_valid_sequences m n) 0
    in
    current_sequences + get_total_number_of_sequences m (n - 1)
and get_valid_sequences (m : int) (n : int) : int list =
  let rec loop (m : int) (n : int) (seq : int list) =
    if n = 0 then seq
    else
      let current_max = List.hd seq in
      loop m (n - 1) (current_max + 1 :: seq)
  in
  loop m n [1]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
