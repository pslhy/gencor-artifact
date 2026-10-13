let rec bell_number (n : int) : int =
  if n <= 0 then 1
  else bell_number (n - 1) + bell_number (n - 2)

let bell_partition (n : int) : int =
  List.fold_right (fun x acc -> acc * bell_number x) (List.init n ((+) 1)) 1

let partition (n : int) : int = bell_partition (n + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
