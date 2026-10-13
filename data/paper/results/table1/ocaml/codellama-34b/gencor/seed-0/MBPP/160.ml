
let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
  if b = 0 then if n mod a = 0 then (n /a, Some (n/ a)) else (n, None)
  else
    let q = n / b in
    let r = n mod b in
    if r = 0 then (q, Some q)
    else
      let (s, t) = find_solution b r in
      (q + s, Some (q + t))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
