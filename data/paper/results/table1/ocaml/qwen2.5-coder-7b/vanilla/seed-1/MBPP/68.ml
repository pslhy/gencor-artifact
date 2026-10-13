let rec is_Monotonic (a : int list) : bool = 
  let rec check (a: int list) (increasing : bool) : bool = 
    match a with
    | [] | [_] -> true
    | h1 :: h2 :: t -> 
      if increasing then 
        if h1 <= h2 then check (h2 :: t) true else false
      else 
        if h1 >= h2 then check (h2 :: t) false else false
  in
  let rec has_increasing (lst : int list) : bool = 
    match lst with
    | [] | [_] -> true
    | h1 :: h2 :: t -> 
      if h1 <= h2 then has_increasing (h2 :: t) else false
  in
  let rec has_decreasing (lst : int list) : bool = 
    match lst with
    | [] | [_] -> true
    | h1 :: h2 :: t -> 
      if h1 >= h2 then has_decreasing (h2 :: t) else false
  in
  has_increasing a || has_decreasing a
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
