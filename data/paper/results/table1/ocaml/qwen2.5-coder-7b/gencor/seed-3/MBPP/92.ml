
let rec is_undulating (n : int) : bool = 
  let rec helper a b (n : int) : bool = 
    if n = 0 then true 
    else if a = b then false 
    else 
      let (d, e) = (n / 10, n mod 10) in 
      helper b d (d - e) 
  in 
  helper (n / 100) (n / 10 mod 10) (n mod 10)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
