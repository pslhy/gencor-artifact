let rec mul_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> 0
  | hd :: tl ->
      if hd mod 2 = 0 then hd * mul_even_odd tl
      else mul_even_odd tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
