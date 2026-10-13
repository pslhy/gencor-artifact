let rec digit_distance_nums (n1 : int) (n2 : int) : int =
  if n1 < 10 && n2 < 10 then n1 - n2
  else begin
    let d1 = digit_distance_nums (n1 / 10) (n2 / 10) in
    let d2 = digit_distance_nums (n1 mod 10) (n2 mod 10) in
    d1 + d2
  end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the per-digit difference between two integers. *)
