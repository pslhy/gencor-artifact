
let rec toggle_middle_bits (n : int) : int =
  if n <= 3 then n
  else 
    (1 lsl (log n)) - 1 lxor (n lxor (1 lsl (log n)) - 1)

and log (n:int) : int = 
  if n < 2 then 0
  else 1 + log (n / 2)

let toggle_middle_bits_wrapper x =
  Printf.printf "Initial value: %d\n" x;
  let result = toggle_middle_bits x in
  Printf.printf "Result after toggling middle bits: %d\n" result;
  result

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
