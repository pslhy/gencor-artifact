
let rec starts_one_ends (n : int) : int =
  if n = 1 then 1
  else if n = 2 then 2
  else
    let digits = [1; 0]
    in
      List.length (List.filter (fun x -> List.hd x = 1)
                   (List.map (fun x -> if List.hd x = 1 then x else x @ [1]) digits)) +
      starts_one_ends (n - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
