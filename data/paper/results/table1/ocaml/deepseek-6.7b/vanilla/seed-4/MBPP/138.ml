let rec is_Sum_Of_Powers_Of_Two (n : int) : bool =
  if n == 0 then
    false
  else if n == 1 then
    true
  else
    let rec check (m : int) : bool =
      if m <= 0 then
        false
      else if m == 1 then
        true
      else if n land m <> 0 then
        is_Sum_Of_Powers_Of_Two (n - m)
      else
        check (m / 2)
    in
    check (n / 2)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not. *)
