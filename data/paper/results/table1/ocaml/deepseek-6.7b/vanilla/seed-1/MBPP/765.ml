let rec is_polite (n : int) : int =
  if n == 1 then 1 
  else 
    if n (lsr 1) lsand 1 == 1 then 1
    else 0 in

let rec nth_polite (n : int) : int =
  let is_polite_value = is_polite n in
  if is_polite_value == 1 then n 
  else nth_polite (n+1) in

let () =
  Printf.printf "%d\n" (nth_polite 10)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
