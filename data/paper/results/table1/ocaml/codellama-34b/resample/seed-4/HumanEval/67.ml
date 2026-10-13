(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     In this task, you will be given a string that represents a number of apples and oranges *)
(*     that are distributed in a basket of fruit this basket contains *)
(*     apples, oranges, and mango fruits. Given the string that represents the total number of *)
(*     the oranges and apples and an integer that represent the total number of the fruits *)
(*     in the basket return the number of the mango fruits in the basket. *)
(*     for examble: *)
(*     >>> fruit_distribution "5 apples and 6 oranges" 19 *)
(*     8 *)
(*     >>> fruit_distribution "0 apples and 1 oranges" 3 *)
(*     2 *)
(*     >>> fruit_distribution "2 apples and 3 oranges" 100 *)
(*     95 *)
(*     >>> fruit_distribution "100 apples and 1 oranges" 120 *)
(*     19 *)
let rec fruit_distribution (s : string) (n : int) : int = 
    let (aps, ors) = parse_string s in 
    let tot = aps + ors in 
    if tot <= n then n - tot else 0

and parse_string (s : string) : int * int = 
    let aps, ors = String.split_on_string "apples" s in 
    (int_of_string aps, int_of_string ors)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:20: Unbound value "String.split_on_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fruit_distribution (s : string) (n : int) : int = 
    let (aps, ors) = String.split_on_string "and" s in
    let tot = aps + ors in 
    if tot <= n then n - tot else 0

let () =
    let s = fruit_distribution "5 apples and 6 oranges" 19 in
    assert(s = 8);
    let s = fruit_distribution "0 apples and 1 oranges" 3 in
    assert(s = 2);
    let s = fruit_distribution "2 apples and 3 oranges" 100 in
    assert(s = 95);
    let s = fruit_distribution "100 apples and 1 oranges" 120 in
    assert(s = 19)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:22: Unbound value "String.split_on_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fruit_distribution (s : string) (n : int) : int =
    let words = String.split_on_string " " s in
    let tot = List.fold_left (fun acc s -> acc + v) 0 words in
    if tot <= n then n - tot else 0

let () =
    let s = fruit_distribution "5 apples and 6 oranges" 19 in
    assert(s = 8);
    let s = fruit_distribution "0 apples and 1 oranges" 3 in
    assert(s = 2);
    let s = fruit_distribution "2 apples and 3 oranges" 100 in
    assert(s = 95);
    let s = fruit_distribution "100 apples and 1 oranges" 120 in
    assert(s = 19)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound value "String.split_on_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fruit_distribution (s : string) (n : int) : int =
    let words = String.split_on_space s in
    let tot = List.fold_left (fun acc s -> acc + v) 0 words in
    if tot <= n then n - tot else 0

let () =
    let s = fruit_distribution "5 apples and 6 oranges" 19 in
    assert(s = 8);
    let s = fruit_distribution "0 apples and 1 oranges" 3 in
    assert(s = 2);
    let s = fruit_distribution "2 apples and 3 oranges" 100 in
    assert(s = 95);
    let s = fruit_distribution "100 apples and 1 oranges" 120 in
    assert(s = 19)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound value "String.split_on_space" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fruit_distribution (s : string) (n : int) : int =
    let words = String.split_on_whitespace s in
    let tot = List.fold_left (fun acc s -> acc + v) 0 words in
    if tot <= n then n - tot else 0

let () =
    let s = fruit_distribution "5 apples and 6 oranges" 19 in
    assert(s = 8);
    let s = fruit_distribution "0 apples and 1 oranges" 3 in
    assert(s = 2);
    let s = fruit_distribution "2 apples and 3 oranges" 100 in
    assert(s = 95);
    let s = fruit_distribution "100 apples and 1 oranges" 120 in
    assert(s = 19)

