
let rec sum (a : int) (b : int) : int =
  let rec divisors (n : int) (i : int) : int list = 
    if i > n then []
    else if n mod i = 0 then i :: divisors n (i+1)
    else divisors n (i+1)
  in
  divisors a 1 |> List.filter (fun x -> List.mem x (divisors b 1)) |> List.fold_left (+) 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
