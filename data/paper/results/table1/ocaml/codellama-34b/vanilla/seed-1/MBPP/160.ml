let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
    let rec aux x y =
        if a*x + b*y = n then Some (x, y)
        else if a*x + b*y < n then aux (x+1) y
        else aux x (y+1) in
    aux 0 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
