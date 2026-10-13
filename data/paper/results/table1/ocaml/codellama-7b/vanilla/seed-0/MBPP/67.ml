let rec bell_number (n : int) : int =
  if n = 0 then 1
  else if n = 1 then 1
  else bell_number (n-1) + bell_number (n-2)

let rec partition_number (n : int) : int =
  if n = 0 then 1
  else if n = 1 then 1
  else partition_number (n-1) + partition_number (n-2) * 2

let () =
  let n = read_int () in
  print_int (partition_number n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
