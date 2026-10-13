(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
let rec is_undulating (n : int) : bool = 
  let rec helper a b (n : int) : bool = 
    if n = 0 then true 
    else if a = b then false 
    else 
      let (d, e) = divmod n 100 in 
      helper b d (e / 10) 
  in 
  let (d, e) = divmod n 100 in 
  d <> e && helper d e (n / 100)

let divmod n m = (n / m, n mod m)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound value "divmod" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_undulating (n : int) : bool = 
  let rec helper a b (n : int) : bool = 
    if n = 0 then true 
    else if a = b then false 
    else 
      let (d, e) = n / 100, n mod 100 in 
      helper b d (e / 10) 
  in 
  let (d, e) = n / 100, n mod 100 in 
  d <> e && helper d e (n / 100)

