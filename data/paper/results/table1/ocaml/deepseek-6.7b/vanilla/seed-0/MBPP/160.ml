let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
    if a = 0 then (n / b, if n mod b = 0 then Some 0 else None)
    else if b = 0 then (n / a, if n mod a = 0 then Some 0 else None)
    else
    let (x, y) = find_solution b (n mod a) a in
    (y, Some(x - (n / a) * y))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
