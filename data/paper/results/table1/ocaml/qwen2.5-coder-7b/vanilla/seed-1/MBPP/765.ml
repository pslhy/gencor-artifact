let rec is_polite (n : int) : int = 
  if n = 0 then 0
  else 
    let rec count_ones (num : int) : int = 
      if num = 0 then 0
      else if num land 1 = 1 then 1 + count_ones (num lsr 1)
      else count_ones (num lsr 1)
    in
    if count_ones n > 1 then n
    else is_polite (n + 1)

let nth_polite (n : int) : int =
  let rec helper (count : int) (num : int) : int =
    if count = n then num
    else helper (count + 1) (is_polite (num + 1))
  in
  helper 0 0



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
