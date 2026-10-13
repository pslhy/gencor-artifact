let rec prime_num (num : int) : bool =
  if num <= 1 then
    false
  else if num <= 3 then
    true
  else if num mod 2 = 0 || num mod 3 = 0 then
    false
  else
    let rec loop (i: int) : bool =
      if i * i > num then
        true
      else if num mod i = 0 || num mod (i + 2) = 0 then
        false
      else
        loop (i + 6)
    in loop 5


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given integer is a prime number. *)
