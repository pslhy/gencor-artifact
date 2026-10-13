(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
let rec count_reverse_pairs (test_list : string list) : int =
  if test_list = [] then 0
  else if test_list = [[]] then 1
  else begin
    let rec loop (list : string list) index =
      if index = List.length list - 1 then
        count_reverse_pairs (List.rev (List.nth list index))
      else
        loop (List.tl list) (index + 1)
  end

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_reverse_pairs (test_list : string list) : int =
  if test_list = [] then 0
  else if test_list = [[]] then 1
  else begin
    let rec loop (list : string list) index =
      if index = List.length list - 1 then
        count_reverse_pairs (List.rev (List.nth list index))
      else
        loop (List.tl list) (index + 1)
  end

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_reverse_pairs (test_list : string list) : int =
  if test_list = [] then 0
  else if test_list = [[]] then 1
  else begin
    let rec loop (list : string list) index =
      if index = List.length list - 1 then
        count_reverse_pairs (List.rev (List.nth list index))
      else
        loop (List.tl list) (index + 1)
    in
    loop test_list 0
  end

