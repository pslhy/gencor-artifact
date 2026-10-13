(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
let rec checks (n : int) : bool =
    let reverse (n : int) : int = 
        (match n with
        | 0 -> 0
        | x when x < 0 -> reverse (-n)
        | _ -> n mod 10 + reverse (n/10)
    in
    let rev = reverse n in
    n = 2*rev + 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:5: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec checks (n : int) : bool =
    let reverse (n : int) : int = 
        (match n with
        | 0 -> 0
        | x when x < 0 -> reverse (- n)
        | _ -> n mod 10 + reverse (n / 10)
    in
    let rev = reverse n in
    n = 2 * rev + 1

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:5: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec checks (n : int) : bool =
    let reverse (n : int) : int = 
        (match n with
        | 0 -> 0
        | x when x < 0 -> reverse (-n))
    in
    let rev = reverse n in
    n = 2 * rev + 1

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:27: Unbound value "reverse" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec checks (n : int) : bool =
    let rec reverse (n : int) : int = 
        (match n with
        | 0 -> 0
        | x when x < 0 -> reverse (-n))
    in
    let rev = reverse n in
    n = 2 * rev + 1

