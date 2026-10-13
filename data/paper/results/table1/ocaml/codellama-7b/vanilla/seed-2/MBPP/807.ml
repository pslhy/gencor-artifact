let rec first_odd (nums : int list) : int =
  match nums with
  | [] -> failwith "No odd number found"
  | hd :: tl -> if hd mod 2 <> 0 then hd else first_odd tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first odd number in a given list of numbers. *)
