let rec is_polite (n : int) : int =
  if n == 0 then 1 else
if n == 1 then 0 else
if n % 2 == 0 then is_polite (n / 2) else
               is_polite ((n - 1) / 2)

let find_nth_polite_number (n : int) : int =
  let rec loop (count : int) (i : int) : int =
    if count == n then i else loop count (i + 1) in
loop 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
