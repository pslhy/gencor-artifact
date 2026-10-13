(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int = 
  match (arr1, arr2, k) with
  | [], _, _ -> invalid_arg "arr1 is empty"
  | _, [], _ -> invalid_arg "arr2 is empty"
  | _, _, 0 -> 
      begin
        match arr1, arr2 with
        | [], _ -> List.hd arr2
        | _, [] -> List.hd arr1
        | h1::t1, _ -> h1
        | _, h2::t2 -> h2
      end
  | h1::t1, _, _ when k = 1 -> min h1 (List.hd arr2)
  | h1::t1, _, _ when h1 < List.hd arr2 ->
      find_kth t1 arr2 (k - 1)
  | h1::t1, _, _ ->
      find_kth arr1 t2 (k - 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:21: Unbound value "t2" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int = 
  match (arr1, arr2, k) with
  | [], _, _ -> invalid_arg "arr1 is empty"
  | _, [], _ -> invalid_arg "arr2 is empty"
  | _, _, 0 -> 
      begin
        match arr1, arr2 with
        | [], _ -> List.hd arr2
        | _, [] -> List.hd arr1
        | h1::t1, _ -> h1
        | _, h2::t2 -> h2
      end
  | h1::t1, _, _ when k = 1 -> min h1 (List.hd arr2)
  | h1::t1, _, _ when h1 < List.hd arr2 ->
      find_kth t1 arr2 (k - 1)
  | h1::t1, _, _ ->
      find_kth arr1 (List.tl arr2) (k - 1)

