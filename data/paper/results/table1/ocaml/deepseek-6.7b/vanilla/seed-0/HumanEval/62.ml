let rec derivative (xs : int list) : int list =
    match xs with
    | [] -> []
    | [_] -> [0]
    | x :: xs -> (List.length xs) * x :: derivative xs

let rec show_poly (xs : int list) : string =
    match xs with
    | [] -> ""
    | [x] -> string_of_int x
    | x :: xs -> string_of_int x ^ " + x * " ^ show_poly xs

let () =
    let poly = [3; 1; 2; 4; 5] in
    let derivative_poly = derivative poly in
    Printf.printf "f(x) = %s\n" (show_poly poly);
    Printf.printf "f'(x) = %s\n" (show_poly derivative_poly)


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
