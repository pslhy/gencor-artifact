let rec armstrong_number (number : int) : bool =
  if number = 0 then
    true
  else
    let (d, m) = (number mod 10, number / 10) in
    d * d * d = m + armstrong_number (m)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
