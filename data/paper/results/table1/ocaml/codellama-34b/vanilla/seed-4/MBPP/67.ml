let rec bell_number (n : int) : int =
  if n <= 1 then
    1
  else
    let rec loop (i : int) (acc : int) : int =
      if i > n then
        acc
      else
        let b1 = bell_number (i - 1) in
        let b2 = bell_number (n - i) in
        loop (i + 1) (acc + b1 * b2)
    in loop 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
