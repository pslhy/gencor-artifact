(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
let rec extract_freq (test_list :  (int * int) list) : int = 
    match test_list with
    | [] -> 0
    | (h1, h2) :: tl -> if contains_dup(h1, h2, test_list) then 0 else 1 + (extract_freq tl)

and contains_dup (x1 : int, x2 : int, test_list : (int * int) list ) : bool = 
    match test_list with
    | [] -> false
    | (h1, h2) :: tl -> (h1 = x1 && h2 = x2) || contains_dup (x1, x2, tl)

let solve (test_list : (int * int) list) : int = extract_freq test_list |> List.length``
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:27: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec extract_freq (test_list :  (int * int) list) : int = 
  match test_list with
  | [] -> 0
  | (h1, h2) :: tl -> if contains_dup (h1, h2, test_list) then 0 else 1 + (extract_freq tl)

and contains_dup (x1 : int, x2 : int, test_list : (int * int) list ) : bool = 
    match test_list with
    | [] -> false
    | (h1, h2) :: tl -> (h1 = x1 && h2 = x2) || contains_dup (x1, x2, tl)

let solve (test_list : (int * int) list) : int = extract_freq test_list |> List.length

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:27: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec extract_freq (test_list :  (int * int) list) : int = 
  match test_list with
  | [] -> 0
  | (h1, h2) :: tl -> if contains_dup (h1, h2, test_list) then 0 else 1 + (extract_freq tl)

and contains_dup (x1 : int, x2 : int, test_list : (int * int) list ) : bool = 
    match test_list with
    | [] -> false
    | (h1, h2) :: tl -> (h1 = x1 && h2 = x2) || contains_dup (x1, x2, tl)

let solve (test_list : (int * int) list) : int = extract_freq test_list

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:27: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec extract_freq (test_list :  (int * int) list) : int = 
  match test_list with
  | [] -> 0
  | (h1, h2) :: tl -> if contains_dup (h1, h2, test_list) then 0 else 1 + (extract_freq tl)

and contains_dup (x1 : int, x2 : int, test_list : (int * int) list ) : bool = 
    match test_list with
    | [] -> false
    | (h1, h2) :: tl -> (h1 = x1 && h2 = x2) || contains_dup (x1, x2, tl)

let solve (test_list : (int * int) list) : int = extract_freq test_list

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:27: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec extract_freq (test_list :  (int * int) list) : int = 
  match test_list with
  | [] -> 0
  | (h1, h2) :: tl -> if contains_dup (h1, h2, test_list) then 0 else 1 + (extract_freq tl)

and contains_dup (x1 : int, x2 : int, test_list : (int * int) list ) : bool = 
    match test_list with
    | [] -> false
    | (h1, h2) :: tl -> (h1 = x1 && h2 = x2) || contains_dup (x1, x2, tl)

let solve (test_list : (int * int) list) : int = extract_freq test_list

