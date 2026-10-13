(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of numbers, return whether or not they are sorted *)
(*     in ascending order. If list has more than 1 duplicate of the same *)
(*     number, return false. Assume no negative numbers and only integers. *)
(*     Examples *)
(*     >>> is_sorted [5] *)
(*     true *)
(*     >>> is_sorted [1; 2; 3; 4; 5] *)
(*     true *)
(*     >>> is_sorted [1; 3; 2; 4; 5] *)
(*     false *)
(*     >>> is_sorted [1; 2; 3; 4; 5; 6] *)
(*     true *)
(*     >>> is_sorted [1; 2; 3; 4; 5; 6; 7] *)
(*     true *)
(*     >>> is_sorted [1; 3; 2; 4; 5; 6; 7] *)
(*     false *)
(*     >>> is_sorted [1; 2; 2; 3; 3; 4] *)
(*     true *)
(*     >>> is_sorted [1; 2; 2; 2; 3; 4] *)
(*     false *)
let rec is_sorted (lst : int list) : bool = 
  let rec check_duplicates (lst : int list) (prev : int option) (seen : bool ref) : bool =
    match lst with
    | [] -> true
    | [x] -> true
    | x::y::xs ->
      ifSome prev (fun p -> if x = p then seen := true else
                                if x < y then check_duplicates (y::xs) (Some x) seen
                                else false)
      && (if !seen then false else check_duplicates (y::xs) (Some x) seen)
  in
  check_duplicates lst None (ref false)

let ifSome (opt : 'a option) (f : 'a -> unit) : unit =
  match opt with
  | Some x -> f x
  | None -> ()

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:7: Unbound value "ifSome" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_sorted (lst : int list) : bool = 
  let rec check_duplicates (lst : int list) (prev : int option) (seen : bool ref) : bool =
    match lst with
    | [] -> true
    | [x] -> true
    | x::y::xs ->
      match prev with
      | Some p -> if x = p then (seen := true; check_duplicates (y::xs) (Some p) (ref false))
                 else if x < y then check_duplicates (y::xs) (Some x) seen
                 else false
      | None -> check_duplicates (y::xs) (Some x) seen
  in
  check_duplicates lst None (ref false)

let ifSome (opt : 'a option) (f : 'a -> unit) : unit =
  match opt with
  | Some x -> f x
  | None -> ()

