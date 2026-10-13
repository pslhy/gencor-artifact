let rec find_solution (a : int) (b : int) (n : int) :  int * int option = 
    (* base case: a = 0 and b = 0 *)
    if a = 0 and b = 0 then
        if n = 0 then
            (* return 1, 1 as a solution *)
            Some (1, 1)
        else
            (* no solution exists *)
            None
    else 
        if n mod b = 0 then
            (* b is a factor of n *)
            let x = n / b in
            (* try finding a suitable y *)
            let y = find_solution a (b - a) (n - x * b) in
            if y = None then
                None
            else
                Some (x, y + b)
        else 
            (* try finding a suitable x *)
            let x = find_solution a b (n - a * b) in
            if x = None then
                None
            else
                Some (x + a, b)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
