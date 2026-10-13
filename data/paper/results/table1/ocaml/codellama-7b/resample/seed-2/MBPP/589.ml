(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
let rec perfect_squares (a : int) (b : int) : int list =
  match (a, b) with
  | a, a -> [a]
  | a, b when a = b -> []
  | a, b when Utils.is_perfect_square a -> a :: perfect_squares a (b-1)
  | a, b -> perfect_squares (a+1) b

and Utils.is_perfect_square (n : int) : bool =
  let rec loop (n : int) (i : int) : bool =
    match n with
    | 0 -> true
    | _ -> n mod i <> 0 && loop n (i-1)
  in
  loop n (int_sqrt (float_of_int n))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec perfect_squares (a : int) (b : int) : int list =
  let rec loop (a : int) (b : int) : int list =
    match (a, b) with
    | a, a -> [a]
    | a, b when a = b -> []
    | a, b -> loop (a+1) b

  loop a b

and Utils.is_perfect_square (n : int) : bool =
  match n with
  | 0 -> true
  | _ -> false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec perfect_squares (a : int) (b : int) : int list =
  let rec loop (a : int) (b : int) : int list =
    match (a, b) with
    | a, a -> [a]
    | a, b when a = b -> []
    | a, b -> loop (a+1) b

  loop a b

and Utils.is_perfect_square (n : int) : bool =
  match n with
  | 0 -> true
  | _ -> check (n * n)

and check (n : int) : bool =
  match n with
  | 0 -> false
  | _ -> check (n - 1)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec perfect_squares (a : int) (b : int) : int list =
  let rec loop (a : int) (b : int) : int list =
    match (a, b) with
    | a, a -> [a]
    | a, b when a = b -> []
    | a, b -> loop (a+1) b

  loop a b

and Utils.is_perfect_square (n : int) : bool =
  match n with
  | 0 -> true
  | _ -> check (n * n)

and check (n : int) : bool =
  match n with
  | 0 -> false
  | _ -> check (n - 1)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec perfect_squares (a : int) (b : int) : int list =
  let rec loop (a : int) (b : int) : int list =
    match (a, b) with
    | a, a -> [a]
    | a, b when a = b -> []
    | a, b -> loop (a+1) b

  loop a b

and Utils.is_perfect_square (n : int) : bool =
  match n with
  | 0 -> true
  | _ -> check (n * n)

and check (n : int) : bool =
  if n = 0 then
   false
  else
    check (n - 1)

