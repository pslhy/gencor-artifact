let rec sum (a : int) (b : int) : int =
  if a = 0 || b = 0 then 0
  else begin
    match (a mod b = 0, b mod a = 0) with
    | (true, true) -> a + b + (sum (a / b) (b / a))
    | (true, false) -> a + (sum (a / b) b)
    | (false, true) -> b + (sum a (b / a))
    | (false, false) -> sum a b
  end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
