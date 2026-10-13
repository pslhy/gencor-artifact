let rec get_total_number_of_sequences (m : int) (n : int) : int =
  if n = 1 then
    1
  else
    let total_number_of_sequences = ref 0 in
    for i = 1 to m do
      total_number_of_sequences := !total_number_of_sequences + get_total_number_of_sequences m (n - 1)
    done;
    !total_number_of_sequences

let rec get_sequence (m : int) (n : int) : int list list =
  if n = 1 then
    [[1]]
  else
    let sequences = [] in
    for i = 1 to m do
      sequences <- !sequences @ (get_sequence m (n - 1))
    done;
    sequences

let count_sequences (m : int) (n : int) : int =
  let total_number_of_sequences = get_total_number_of_sequences m n in
  let sequences = get_sequence m n in
  total_number_of_sequences


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
