let rec toggle_middle_bits (n : int) : int =
  if n <= 2 then n
  else
    let rec loop (m : int) : int =
      if m <= 2 then m
      else (m land (lnot (1 lsl 0))) lor (toggle_middle_bits (m lsr 1 lsr 1))
    in 
    (n land (lnot (1 lsl 0))) lor (1 lsl 0) lor (loop (n lsr 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
