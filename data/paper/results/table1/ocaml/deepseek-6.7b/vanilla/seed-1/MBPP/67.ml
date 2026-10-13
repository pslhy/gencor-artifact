let rec bell_number (n : int) : int =
  if n <= 1 then n
  else bell_number (n - 1) * (n - 1) + bell_number (n - 2)

let bell_partitions (n : int) : int =
  if n = 0 then 1
  else
    let rec iter (m : int) (result : int) : int =
      if m = n then result
      else iter (m + 1) (result + bell_number m)
    in iter 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
