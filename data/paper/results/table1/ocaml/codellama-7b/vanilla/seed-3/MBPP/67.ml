let rec bell_number (n : int) : int =
  if n = 1 then
    1
  else
    List.fold_right (+) (List.init (n - 1) (fun _ -> bell_number (n - 1))) (bell_number (n - 1))

let rec partition_count (n : int) (k : int) : int =
  if k = 0 then
    1
  else if n = 0 then
    0
  else
    partition_count (n - 1) (k - 1) + partition_count (n - 1) k

let count_partitions (n : int) : int =
  partition_count n n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
