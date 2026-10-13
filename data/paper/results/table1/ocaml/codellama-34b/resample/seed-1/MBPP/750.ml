(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to add the given tuple to the given list. *)
let rec add_tuple (test_list : int list) (test_tup :  int * int) : int list =
    let (a, b) = test_tup in
    let rec aux l acc =
      match l with
      | [] -> (a :: b :: acc)
      | hd :: tl ->
        if hd = a then
          if tl = [] then (a :: b :: acc)
          else (b :: aux tl (a :: acc))
        else aux tl (hd :: acc) in
      aux test_list []

let add_tuple (test_list : int list) (test_tup :  int * int) : int list =
    let (a, b) = test_tup in
    let rec aux l acc =
      match l with
      | [] -> (a :: b :: acc)
      | hd :: tl ->
        if hd = a then
          if tl = [] then (a :: b :: acc)
          else (b :: aux tl (a :: acc))
        else aux tl (hd :: acc) in
      aux test_list []

