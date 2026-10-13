let rec derivative (xs : int list) : int list =
    match xs with
    | [] -> []
    | _ :: xs' -> List.map (fun x -> x * (xs.Head + 1)) xs'


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     xs represent coefficients of a polynomial. *)
(*     xs[0] + xs[1] * x + xs[2] * x^2 + .... *)
(*     Return derivative of this polynomial in the same form. *)
(*     >>> derivative [3; 1; 2; 4; 5] *)
(*     [1; 4; 12; 20] *)
(*     >>> derivative [1; 2; 3] *)
(*     [2; 6] *)
