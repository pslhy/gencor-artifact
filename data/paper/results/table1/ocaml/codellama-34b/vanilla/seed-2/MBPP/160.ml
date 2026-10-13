let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
    match n with
    | 0 -> (0, Some 0)
    | _ ->
      if n = a then (1, Some 0)
      else if n = b then (0, Some 1)
      else
        let x = find_solution a b (n - a) in
        let y = find_solution a b (n - b) in
        match (x, y) with
        | (Some x, Some y) -> (x, Some y)
        | _ -> None


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
