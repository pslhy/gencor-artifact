let rec find_star_num (n : int) : int =
  if n = 1 then
    1
  else
    let nth_star_num = n * n in
    if nth_star_num >= 10 then
      nth_star_num mod 10
    else
      nth_star_num

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n'th star number. *)
