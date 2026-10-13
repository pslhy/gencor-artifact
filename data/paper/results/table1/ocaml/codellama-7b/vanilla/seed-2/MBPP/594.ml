let rec diff_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> failwith "empty list"
  | h1 :: t when h1 mod 2 = 0 -> h1 - (List.hd (List.tl t))
  | h1 :: t when h1 mod 2 = 1 -> h1 - (List.hd t)
  | _ :: t -> diff_even_odd t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
