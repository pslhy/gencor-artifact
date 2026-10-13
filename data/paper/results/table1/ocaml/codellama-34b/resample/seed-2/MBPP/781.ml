(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
let rec count_divisors (n : int) : bool =
    match n with
    | 1 -> false
    | 2 -> true
    | _ -> (List.length (List.filter (fun x -> n mod x = 0) [2 .. n - 1])) % 2 = 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:64: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_divisors (n : int) : bool =
    match n with
    | 1 -> false
    | 2 -> true
    | _ -> (List.length (List.filter (fun x -> x mod n = 0) [2 .. n - 1])) % 2 = 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:64: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_divisors (n : int) : bool =
    match n with
    | 1 -> false
    | _ -> (List.length (List.filter (fun x -> x mod n = 0) [2 .. n - 1])) % 2 = 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:64: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_divisors (n : int) : bool =
    match n with
    | 1 -> false
    | _ -> (List.length (List.filter (fun x -> x mod n = 0) [2 .. n - 1])) % 2 = 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:64: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_divisors (n : int) : bool =
    match n with
    | 1 -> false
    | _ -> (List.length (List.filter (fun x -> x mod n = 0) [2 .. n - 1]) % 2 = 0)

