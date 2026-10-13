(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the Eulerian number a(n, m). *)
let rec eulerian_num (n : int) (m : int) : int =
    match n, m with
    | 0, _ -> 1
    | n, 0 -> 0
    | n, m -> (n - 1) * eulerian_num (n - 1) (m - 1) + pow_mod (-1) (m - 1) (n - 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:56: Unbound value "pow_mod" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec eulerian_num (n : int) (m : int) : int =
    match n, m with
    | 0, _ -> 1
    | n, 0 -> 0
    | n, m -> (n - 1) * eulerian_num (n - 1) (m - 1) + (powm (-1) (m - 1) (n - 1))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:57: Unbound value "powm" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec eulerian_num (n : int) (m : int) : int =
    match n, m with
    | 0, _ -> 1
    | n, 0 -> 0
    | n, m -> (n - 1) * eulerian_num (n - 1) (m - 1) + (int_of_float ((float_of_int (n - 1)) ** (float_of_int (m - 1))))

