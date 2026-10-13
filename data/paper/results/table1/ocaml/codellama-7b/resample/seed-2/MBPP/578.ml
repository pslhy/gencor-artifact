(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to interleave 3 lists of the same length into a single flat list. *)
let rec interleave_lists (list1 : int list) (list2 : int list) (list3 : int list) : int list =
  match list1, list2, list3 with
  | (x::xs), (y::ys), (z::zs) -> (x::y::z::xs) @ (interleave_lists xs ys zs)
  | [], [], [] -> []
  | _ -> failwith "Lists must be of same length" in

let test_data =
  [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]];;

List.iter (fun (l1, l2, l3, expected) ->
   let actual = interleave_lists l1 l2 l3 in
   assert (actual = expected)
) test_data

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:36: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec interleave_lists (list1 : int list) (list2 : int list) (list3 : int list) : int list =
  match list1, list2, list3 with
  | [], [], [] -> []
  | (x::xs), _, _ -> (x::xs) @ interleave_lists [] [] list3
  | _, (y::ys), _ -> (y::ys) @ interleave_lists [] [] list2
  | _, _, (z::zs) -> (z::zs) @ interleave_lists [] [] list1 in

test (interleave_lists [1; 2; 3] [4; 5; 6] [7; 8; 9]);;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Unbound value "test" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec interleave_lists (list1 : int list) (list2 : int list) (list3 : int list) : int list =
  match list1, list2, list3 with
  | [], [], [] -> []
  | (x::xs), _, _ -> (x::xs) @ interleave_lists [] [] list3
  | _, (y::ys), _ -> (y::ys) @ interleave_lists [] [] list2
  | _, _, (z::zs) -> (z::zs) @ interleave_lists [] [] list1 in

let rec test lst1 lst2 = interleave_lists lst1 lst2;

test (interleave_lists [1; 2; 3] [4; 5; 6] [7; 8; 9]);;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:54: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec interleave_lists (list1 : int list) (list2 : int list) (list3 : int list) : int list =
  match list1, list2, list3 with
  | [], [], [] -> []
  | (x::xs), _, _ -> (x::xs) @ interleave_lists [] [] list3
  | _, (y::ys), _ -> (y::ys) @ interleave_lists [] [] list2
  | _, _, (z::zs) -> (z::zs) @ interleave_lists [] [] list1

let rec test lst1 lst2 = interleave_lists lst1 lst2

test (interleave_lists [1; 2; 3] [4; 5; 6] [7; 8; 9])

