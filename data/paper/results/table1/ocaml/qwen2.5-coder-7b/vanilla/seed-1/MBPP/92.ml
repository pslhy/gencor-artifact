let rec is_undulating (n : int) : bool = 
  let rec check (a : int) (b : int) (n : int) : bool =
    if n < 10 then false
    else if n < 100 then a = n / 10 && b = n
    else check b (n / 100 mod 10) (n / 10)
  in
  let a = n / 10
  and b = n mod 10
  in
  a <> b && check a b n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
