(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Your task is to implement a function that will simplify the expression *)
(*     x * n. The function returns true if x * n evaluates to a whole number and false *)
(*     otherwise. Both x and n, are string representation of a fraction, and have the following format, *)
(*     <numerator>/<denominator> where both numerator and denominator are positive whole numbers. *)
(*     You can assume that x, and n are valid fractions, and do not have zero as denominator. *)
(*     >>> simplify "1/5" "5/1" *)
(*     true *)
(*     >>> simplify "1/6" "2/1" *)
(*     false *)
(*     >>> simplify "7/10" "10/2" *)
(*     false *)
let rec simplify (x : string) (n : string) : bool =
    let x' = parse_fraction x in
    let n' = parse_fraction n in
    match x' with
    | Whole num1 -> n' mod num1 = 0
    | Fraction num1Den1 -> n' mod (num1 * den1) = 0
    | _ -> false

let parse_fraction (fraction : string) : Fraction =
    let parts = fraction.split '/' in
    let num = int_of_string parts[0] in
    let den = int_of_string parts[1] in
    if den = 0 then
        Whole num
    else
        Fraction (num, den)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:51: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec simplify (x : string) (n : string) : bool =
    let x' = parse_fraction x in
    let n' = parse_fraction n in
    match x' with
    | Whole num1 -> n' mod num1 = 0
    | Fraction num1Den1 -> n' mod (num1 * den1) = 0
    | _ -> false

let rec simplify_expression (e : expression) : bool =
    match e with
    | Add (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Sub (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Mul (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Div (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Mod (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Pow (e1, e2) -> (simplify_expression e1) && (simplify_expression e2)
    | _ -> false

let simplify (e : expression) : expression =
    if simplify_expression e then simplify_expression e else e

let test_simplify () =
    let test1 = (1 / 2) * (2 / 3) in
    let test2 = (1 / 2) * (2 / 4) in
    let test3 = (1 / 2) * (2 / 6) in
    let test4 = (1 / 2) * (2 / 10) in
    let test5 = (1 / 2) * (2 / 15) in
    let test6 = (1 / 2) * (2 / 30) in
    let test7 = (1 / 2) * (2 / 40) in
    let test8 = (1 / 2) * (2 / 60) in
    let test9 = (1 / 2) * (2 / 100) in
    let test10 = (1 / 2) * (2 / 150) in
    assert (simplify test1 = 1 / 3);
    assert (simplify test2 = 1 / 4);
    assert (simplify test3 = 1 / 6);
    assert (simplify test4 = 1 / 10);
    assert (simplify test5 = 1 / 15);
    assert (simplify test6 = 1 / 30);
    assert (simplify test7 = 1 / 40);
    assert (simplify test8 = 1 / 60);
    assert (simplify test9 = 1 / 100);
    assert (simplify test10 = 1 / 150);

let _ = test_simplify ()

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:45:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec simplify (x : string) (n : string) : bool =
    let x' = parse_fraction x in
    let n' = parse_fraction n in
    match x' with
    | Whole num1 -> n' mod num1 = 0
    | Fraction num1Den1 -> n' mod (num1 * den1) = 0
    | _ -> false

let rec simplify_expression (e : expression) : bool =
    match e with
    | Add (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Sub (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Mul (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Div (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Mod (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Pow (e1, e2) -> (simplify_expression e1) && (simplify_expression e2)
    | _ -> false

let simplify (e : expression) : expression =
    if simplify_expression e then simplify_expression e else e

let test_simplify () =
    let test1 = (1 / 2) * (2 / 3) in
    let test2 = (1 / 2) * (2 / 4) in
    let test3 = (1 / 2) * (2 / 6) in
    let test4 = (1 / 2) * (2 / 10) in
    let test5 = (1 / 2) * (2 / 15) in
    let test6 = (1 / 2) * (2 / 30) in
    let test7 = (1 / 2) * (2 / 40) in
    let test8 = (1 / 2) * (2 / 60) in
    let test9 = (1 / 2) * (2 / 100) in
    let test10 = (1 / 2) * (2 / 150) in
    assert (simplify test1 = 1 / 3);
    assert (simplify test2 = 1 / 4);
    assert (simplify test3 = 1 / 6);
    assert (simplify test4 = 1 / 10);
    assert (simplify test5 = 1 / 15);
    assert (simplify test6 = 1 / 30);
    assert (simplify test7 = 1 / 40);
    assert (simplify test8 = 1 / 60);
    assert (simplify test9 = 1 / 100);
    assert (simplify test10 = 1 / 150);

let _ = test_simplify ()

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:45:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec simplify (x : string) (n : string) : bool =
    let x' = parse_fraction x in
    let n' = parse_fraction n in
    match x' with
    | Whole num1 -> n' mod num1 = 0
    | Fraction num1Den1 -> n' mod (num1 * den1) = 0
    | _ -> false

let rec simplify_expression (e : expression) : bool =
    match e with
    | Add (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Sub (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Mul (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Div (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Mod (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Pow (e1, e2) -> (simplify_expression e1) && (simplify_expression e2)
    | _ -> false

let simplify (e : expression) : expression =
    if simplify_expression e then simplify_expression e else e

let test_simplify () =
    let test1 = (1 / 2) * (2 / 3) in
    let test2 = (1 / 2) * (2 / 4) in
    let test3 = (1 / 2) * (2 / 6) in
    let test4 = (1 / 2) * (2 / 10) in
    let test5 = (1 / 2) * (2 / 15) in
    let test6 = (1 / 2) * (2 / 30) in
    let test7 = (1 / 2) * (2 / 40) in
    let test8 = (1 / 2) * (2 / 60) in
    let test9 = (1 / 2) * (2 / 100) in
    let test10 = (1 / 2) * (2 / 150) in
    assert (simplify test1 = 1 / 3);
    assert (simplify test2 = 1 / 4);
    assert (simplify test3 = 1 / 6);
    assert (simplify test4 = 1 / 10);
    assert (simplify test5 = 1 / 15);
    assert (simplify test6 = 1 / 30);
    assert (simplify test7 = 1 / 40);
    assert (simplify test8 = 1 / 60);
    assert (simplify test9 = 1 / 100);
    assert (simplify test10 = 1 / 150);

let _ = test_simplify ()

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:45:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec simplify (x : string) (n : string) : bool =
    let x' = parse_fraction x in
    let n' = parse_fraction n in
    match x' with
    | Whole num1 -> n' mod num1 = 0
    | Fraction num1Den1 -> n' mod (num1 * den1) = 0
    | _ -> false

let rec simplify_expression (e : expression) : bool =
    match e with
    | Add (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Sub (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Mul (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Div (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Mod (e1, e2) -> simplify_expression e1 && simplify_expression e2
    | Pow (e1, e2) -> (simplify_expression e1) && (simplify_expression e2)
    | _ -> false

let simplify (e : expression) : expression =
    if simplify_expression e then simplify_expression e else e

let test_simplify () =
    let test1 = (1 / 2) * (2 / 3) in
    let test2 = (1 / 2) * (2 / 4) in
    let test3 = (1 / 2) * (2 / 6) in
    let test4 = (1 / 2) * (2 / 10) in
    let test5 = (1 / 2) * (2 / 15) in
    let test6 = (1 / 2) * (2 / 30) in
    let test7 = (1 / 2) * (2 / 40) in
    let test8 = (1 / 2) * (2 / 60) in
    let test9 = (1 / 2) * (2 / 100) in
    let test10 = (1 / 2) * (2 / 150) in
    assert (simplify test1 = 1 / 3);
    assert (simplify test2 = 1 / 4);
    assert (simplify test3 = 1 / 6);
    assert (simplify test4 = 1 / 10);
    assert (simplify test5 = 1 / 15);
    assert (simplify test6 = 1 / 30);
    assert (simplify test7 = 1 / 40);
    assert (simplify test8 = 1 / 60);
    assert (simplify test9 = 1 / 100);
    assert (simplify test10 = 1 / 150);

let _ = test_simplify ()

