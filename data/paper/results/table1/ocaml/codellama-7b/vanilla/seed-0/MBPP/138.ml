let rec is_Sum_Of_Powers_Of_Two (n : int) : bool =
  if n = 0 then false
  else begin
    let pow2 = 1 lsl (width n - 1) in
    is_pow_of_two n pow2 || is_Sum_Of_Powers_Of_Two (n - pow2)
  end

and is_pow_of_two (n : int) (pow : int) : bool =
  n = pow || n = pow + 1

and width (n : int) : int =
  let rec aux (n : int) (i : int) : int =
    if n = 1 then i
    else aux (n lsr 1) (i + 1)
  in
  aux n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not. *)
