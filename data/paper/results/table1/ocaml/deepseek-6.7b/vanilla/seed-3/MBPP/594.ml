let rec diff_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> failwith "Empty list"
  | head :: tail -> if head mod 2 = 0 then head - (diff_even_odd tail) else diff_even_odd tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
