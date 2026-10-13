let rec is_num_decagonal (n : int) : int =
  if n = 0 then 1
  else if n = 1 then 10
  else if n = 2 then 31
  else
    let rec helper (n : int) (count : int) : int =
      if n = 0 then count
      else if count mod 10 = 0 then helper (n / 10) (count + 1)
      else helper (n / 10) count
    in
    helper n 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth decagonal number. *)
