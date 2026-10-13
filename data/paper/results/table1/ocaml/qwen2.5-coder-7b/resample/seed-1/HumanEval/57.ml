(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return true is list elements are monotonically increasing or decreasing. *)
(*     >>> monotonic [1; 2; 4; 20] *)
(*     true *)
(*     >>> monotonic [1; 20; 4; 10] *)
(*     false *)
(*     >>> monotonic [4; 1; 0; (-10)] *)
(*     true *)
let rec monotonic (l : int list) : bool = 
  let rec check (increasing : bool) (prev : int) (lst : int list) : bool =
    match lst with
    | [] -> true
    | x :: xs -> 
        let is_increasing = x >= prev in
        if increasing && not is_increasing then false
        else if not increasing && is_increasing then false
        else check is_increasing x xs
  in
  match l with
  | [] | [_] -> true
  | x :: y :: _ -> 
      let is_increasing = y >= x in
      check is_increasing x (y :: xs)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:35: Unbound value "xs" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec monotonic (l : int list) : bool = 
  let rec check (increasing : bool) (prev : int) (lst : int list) : bool =
    match lst with
    | [] -> true
    | x :: xs -> 
        let is_increasing = x >= prev in
        if increasing && not is_increasing then false
        else if not increasing && is_increasing then false
        else check is_increasing x xs
  in
  match l with
  | [] | [_] -> true
  | x :: y :: xs -> 
      let is_increasing = y >= x in
      check is_increasing x xs

