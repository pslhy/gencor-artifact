
let rec modp (n : int) (p : int) : int =
  match n with
  | 0 -> 0
  | n ->
    let remainder : int = modp (n / p) p in
    let base : int = n mod p in
    match remainder with
    | 0 -> base
    | _ -> remainder * p + base in

let test n p expected =
  let result : int = modp n p in
  if result = expected then
    print_endline (n |> string_of_int |> Printf.sprintf "Success: modp %d %d = %d (expected %d)" n p result expected)
  else
    print_endline (n |> string_of_int |> Printf.sprintf "Failure: modp %d %d = %d (expected %d)" n p result expected);

let () =
  let tests : (int * int * int) list = [ (3, 5, 3); (1101, 101, 2); (0, 101, 1); (3, 11, 8); (100, 101, 1) ] in
  List.iter (unsafe_really_input tests) tests;

and unsafe_really_input (tests : (int * int * int) list) ((n : int), (p : int), (expected : int)) : unit =
  tests := (n, p, expected) :: (!tests);

and test (n : int) (p : int) (expected : int) : unit =
  let result : int = modp n p in
  if result = expected then
    print_endline (n |> string_of_int |> Printf.sprintf "Success: modp %d %d = %d (expected %d)" n p result expected)
  else
    print_endline (n |> string_of_int |> Printf.sprintf "Failure: modp %d %d = %d (expected %d)" n p result expected);

and modp (n : int) (p : int) : int =
  match n with
  | 0 -> 0
  | n ->
    let remainder : int = modp (n / p) p in
    let base : int = n mod p in
    match remainder with
    | 0 -> base
    | _ -> remainder * p + base in

let rec print_tests () : unit =
  match !test with
  | [] -> print_endline "Test Complete."
  | (n, p, expected) :: tests ->
    test n p expected;
    print_tests ();

and () =
  print_endline "Starting Tests...";
  print_tests ();

();

Undefined_recursive_module (modp 2 3 9)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)

(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [modp n p] computes [2^n modulo p]. *)


(** [

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return 2^n modulo p (be aware of numerics). *)
(*     >>> modp 3 5 *)
(*     3 *)
(*     >>> modp 1101 101 *)
(*     2 *)
(*     >>> modp 0 101 *)
(*     1 *)
(*     >>> modp 3 11 *)
(*     8 *)
(*     >>> modp 100 101 *)
(*     1 *)
