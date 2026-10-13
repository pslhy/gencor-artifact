let rec is_polite (n : int) : int =
  if n = 0 then 1
  else if n = 1 then 1
  else if n < 0 then 0
  else
    let n = n - 1 in
    let d = n mod 10 in
    let (r1, r2) = int_of_float (floor (float_of_int n /. 10.0)) in
    if d = 10 then is_polite(r2) else if d = 0 then is_polite(r1) else is_polite(r1) || is_polite(r2)

let nth_polite (n : int) : int =
  let rec aux (n : int) (acc : int) : int =
    if n = 0 then acc
    else if is_polite(acc) then aux (n - 1) (acc + 1)
    else aux (n - 1) (acc + 1)
  in
  aux n 0

let () =
  let n = 5 in
  let polite_number = nth_polite n in
  Printf.printf "n-th polite number: %d\n" polite_number


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
