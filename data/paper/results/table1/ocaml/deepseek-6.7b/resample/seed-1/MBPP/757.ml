(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
let rec count_reverse_pairs (test_list : string list) : int =
  let rec check_reverse (s1 : string) (s2 : string) : bool =
    if s1 = String.rev s2 then true else false in
  let rec iter_loop (rest : string list) (total : int) : int =
    match rest with
    | [] -> total
    | head :: tail ->
      let pair = List.filter (check_reverse head) test_list in
      iter_loop (List.filter (fun x -> x<>head) tail) (total + (List.length pair)) in
  iter_loop test_list 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_reverse_pairs (test_list : string list) : int =
  let rec check_reverse (s1 : string) (s2 : string) : bool =
    s1 = String.sub s2 0 (String.length s2)

  and iter_loop (rest : string list) (total : int) : int =
    match rest with
    | [] -> total
    | head :: tail ->
      let pair = List.filter (check_reverse head) test_list in
      iter_loop (List.filter (fun x -> x<>head) tail) (total + (List.length pair)) in
  iter_loop test_list 0

