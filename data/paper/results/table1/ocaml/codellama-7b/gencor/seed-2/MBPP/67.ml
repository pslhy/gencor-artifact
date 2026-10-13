
let rec bell_number (n : int) : int =
  match n with
  | 0 -> 1
  | n -> List.fold_right ( + ) (0 :: (bell_number (n - 1))) (bell_number (n - 1))

let num_of_ways_to_partition (s : int) : int =
  if s < 0 then 0
  else bell_number s

let () =
  let inputs = [ 1; 2; 3; 4; 5; 6; 7; 8; 9 ] in
  let outputs = [ 1; 1; 2; 3; 5; 7; 11; 15; 22 ] in
  List.iteri (fun i x ->
      let result = num_of_ways_to_partition x in
      Printf.printf "Input: %i Output: %i Expected: %i\n" x result outputs.(i))
    inputs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
