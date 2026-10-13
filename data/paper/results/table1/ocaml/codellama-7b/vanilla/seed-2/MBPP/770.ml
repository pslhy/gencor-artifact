let rec odd_num_sum (n : int) : int =
  match n with
  | 0 -> 0
  | _ -> List.nth (List.map (fun i -> i * i * i * i) ( Utils.natural_numbers n), n - 1) + odd_num_sum (n - 1)

and Utils.natural_numbers n =
  let rec aux i = if i > n then [] else i :: aux (i + 1) in
  aux 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of fourth power of first n odd natural numbers. *)
